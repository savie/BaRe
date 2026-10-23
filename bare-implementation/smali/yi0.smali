.class public final synthetic Lyi0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lyi0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lyi0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lyi0;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lyi0;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lyi0;->a:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    iget-object v4, p0, Lyi0;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Lyi0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Lyi0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    check-cast p0, Luo8;

    .line 18
    .line 19
    check-cast v5, Ljava/lang/Integer;

    .line 20
    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Luo8;->a:Lorg/swiftapps/swiftbackup/walls/WallsDashActivity;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Luo8;->b:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-lez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " ("

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, ")"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-object v3

    .line 71
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 72
    .line 73
    check-cast v5, Ljava/lang/String;

    .line 74
    .line 75
    check-cast v4, [C

    .line 76
    .line 77
    new-instance v0, Ljava/io/File;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object p0, Llv1;->e:Ll0;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    array-length v6, v4

    .line 91
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move-object v4, v3

    .line 97
    :goto_1
    :try_start_0
    new-instance v6, Lz07;

    .line 98
    .line 99
    new-instance v7, Lb17;

    .line 100
    .line 101
    const/16 v8, 0x29

    .line 102
    .line 103
    invoke-direct {v7, v3, v4, p0, v8}, Lb17;-><init>(Lf27;[CLny6;I)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v6, v0, v7}, Lz07;-><init>(Ljava/io/File;Lb17;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .line 108
    .line 109
    :try_start_1
    invoke-virtual {v6, v5}, Lz07;->m(Ljava/lang/String;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-static {p0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;

    .line 137
    .line 138
    invoke-static {v1}, Ltu0;->B(Lcom/swiftapps/sba/internal/tar/SbaTarEntryInfo;)Lz17;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    goto :goto_3

    .line 148
    :cond_3
    :try_start_2
    invoke-virtual {v6}, Lz07;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    .line 150
    .line 151
    if-eqz v4, :cond_4

    .line 152
    .line 153
    array-length p0, v4

    .line 154
    invoke-static {v4, v2, p0, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 155
    .line 156
    .line 157
    :cond_4
    return-object v0

    .line 158
    :catchall_1
    move-exception p0

    .line 159
    goto :goto_4

    .line 160
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 161
    :catchall_2
    move-exception v0

    .line 162
    :try_start_4
    invoke-static {v6, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    :goto_4
    if-eqz v4, :cond_5

    .line 167
    .line 168
    array-length v0, v4

    .line 169
    invoke-static {v4, v2, v0, v2}, Ljava/util/Arrays;->fill([CIIC)V

    .line 170
    .line 171
    .line 172
    :cond_5
    throw p0

    .line 173
    :pswitch_1
    check-cast p0, Lin3;

    .line 174
    .line 175
    check-cast v5, Lq63;

    .line 176
    .line 177
    check-cast v4, Lzn7;

    .line 178
    .line 179
    new-instance v0, Lhn3;

    .line 180
    .line 181
    invoke-virtual {p0, v5}, Lin3;->j(Lq63;)Lzn7;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-nez v1, :cond_6

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_6
    move-object v4, v1

    .line 189
    :goto_5
    invoke-virtual {p0}, Lin3;->l()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-direct {v0, v4, p0, v5}, Lhn3;-><init>(Lzn7;Ljava/util/List;Lq63;)V

    .line 194
    .line 195
    .line 196
    return-object v0

    .line 197
    :pswitch_2
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 198
    .line 199
    check-cast v5, Lt22;

    .line 200
    .line 201
    check-cast v4, Ljava/lang/Exception;

    .line 202
    .line 203
    invoke-static {p0, v5, v4}, Landroidx/credentials/playservices/controllers/identitycredentials/createdigitalcredential/CreateDigitalCredentialController;->$r8$lambda$d65dNeHZ_pvudacsyUobMsQHpDY(Ljava/util/concurrent/Executor;Lt22;Ljava/lang/Exception;)Lbe8;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    return-object p0

    .line 208
    :pswitch_3
    check-cast p0, Lzi0;

    .line 209
    .line 210
    check-cast v5, Laj0;

    .line 211
    .line 212
    check-cast v4, Lmj0;

    .line 213
    .line 214
    new-instance v0, Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .line 218
    .line 219
    iget-object v4, v4, Lmj0;->f:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_c

    .line 230
    .line 231
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    check-cast v6, Ljj0;

    .line 236
    .line 237
    iget-object v7, v6, Ljj0;->a:Ljava/lang/String;

    .line 238
    .line 239
    const-string v8, "locations"

    .line 240
    .line 241
    invoke-static {v7, v8}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-eqz v7, :cond_7

    .line 246
    .line 247
    invoke-virtual {v6}, Ljj0;->a()Ljava/util/ArrayList;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    new-instance v8, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-static {v7, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-eqz v9, :cond_8

    .line 269
    .line 270
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    check-cast v9, Lli0;

    .line 275
    .line 276
    iget-object v9, v9, Lli0;->a:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    :cond_9
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    if-eqz v8, :cond_a

    .line 291
    .line 292
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    check-cast v8, Ljava/lang/String;

    .line 297
    .line 298
    sget-object v9, Lq05;->Companion:Lo05;

    .line 299
    .line 300
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {v8}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 304
    .line 305
    .line 306
    move-result-object v8

    .line 307
    if-eqz v8, :cond_9

    .line 308
    .line 309
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_a
    iget-object v6, v6, Ljj0;->c:Ljava/util/List;

    .line 314
    .line 315
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    :cond_b
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    .line 321
    .line 322
    move-result v7

    .line 323
    if-eqz v7, :cond_7

    .line 324
    .line 325
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    check-cast v7, Lli0;

    .line 330
    .line 331
    sget-object v8, Lq05;->Companion:Lo05;

    .line 332
    .line 333
    iget-object v9, v7, Lli0;->a:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    .line 337
    .line 338
    invoke-static {v9}, Lo05;->a(Ljava/lang/String;)Lq05;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-virtual {v7}, Lli0;->b()Z

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    if-nez v9, :cond_b

    .line 347
    .line 348
    if-eqz v8, :cond_b

    .line 349
    .line 350
    iget v9, v5, Laj0;->b:I

    .line 351
    .line 352
    invoke-virtual {v7}, Lli0;->a()Z

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    invoke-virtual {v8, v9, v7}, Lq05;->setCheckedInExpansion(IZ)V

    .line 357
    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_c
    new-instance v1, Lxy7;

    .line 361
    .line 362
    invoke-direct {v1, v0, v2}, Lxy7;-><init>(Ljava/util/List;Z)V

    .line 363
    .line 364
    .line 365
    invoke-interface {p0, v1}, Lzi0;->o(Lxy7;)V

    .line 366
    .line 367
    .line 368
    return-object v3

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
