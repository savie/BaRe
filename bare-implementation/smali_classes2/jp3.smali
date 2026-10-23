.class public final synthetic Ljp3;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Ljp3;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ljp3;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    move-object/from16 v3, p2

    .line 15
    .line 16
    check-cast v3, Lvd5;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lorg/swiftapps/swiftbackup/messagescalls/dash/MessagesDashActivity;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v3}, Lje5;->W(Landroid/view/View;Lvd5;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :pswitch_0
    move-object/from16 v1, p1

    .line 33
    .line 34
    check-cast v1, Landroid/view/View;

    .line 35
    .line 36
    move-object/from16 v3, p2

    .line 37
    .line 38
    check-cast v3, Lzk3;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Luz0;->receiver:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lkp3;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-wide v4, v3, Lzk3;->b:J

    .line 54
    .line 55
    new-instance v6, Lu45;

    .line 56
    .line 57
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const/16 v8, 0xc

    .line 62
    .line 63
    invoke-direct {v6, v7, v1, v8}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    const v1, 0x7f0f0016

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v1}, Ll90;->f(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v6, Ll90;->c:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lfc5;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    move v8, v7

    .line 81
    :goto_0
    iget-object v9, v1, Lfc5;->f:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-ge v8, v9, :cond_f

    .line 88
    .line 89
    add-int/lit8 v9, v8, 0x1

    .line 90
    .line 91
    invoke-virtual {v1, v8}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const/4 v10, 0x0

    .line 96
    if-eqz v8, :cond_e

    .line 97
    .line 98
    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    const v12, 0x7f0a004f

    .line 103
    .line 104
    .line 105
    const-string v13, "section"

    .line 106
    .line 107
    const/4 v14, 0x1

    .line 108
    if-ne v11, v12, :cond_5

    .line 109
    .line 110
    sget-object v11, Lpz4;->g:Lpz4;

    .line 111
    .line 112
    invoke-virtual {v11}, Ldv;->c()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v11

    .line 116
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_1

    .line 121
    .line 122
    :cond_0
    move v11, v7

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-eqz v12, :cond_0

    .line 133
    .line 134
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    check-cast v12, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;

    .line 139
    .line 140
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderMetadata;->getFolderItem()Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    invoke-virtual {v12}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    iget-object v15, v3, Lzk3;->a:Lorg/swiftapps/swiftbackup/folders/data/FolderItem;

    .line 149
    .line 150
    invoke-virtual {v15}, Lorg/swiftapps/swiftbackup/folders/data/FolderItem;->getId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    invoke-static {v12, v15}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-eqz v12, :cond_2

    .line 159
    .line 160
    move v11, v14

    .line 161
    :goto_1
    iget-object v12, v0, Lkp3;->d:Lto3;

    .line 162
    .line 163
    if-eqz v12, :cond_4

    .line 164
    .line 165
    invoke-virtual {v12}, Lto3;->isCloudSection()Z

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    if-eqz v10, :cond_3

    .line 170
    .line 171
    if-nez v11, :cond_3

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_3
    move v14, v7

    .line 175
    :goto_2
    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 176
    .line 177
    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :cond_4
    invoke-static {v13}, Lpe4;->F(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v10

    .line 184
    :cond_5
    const v12, 0x7f0a0058

    .line 185
    .line 186
    .line 187
    const-wide/16 v15, 0x0

    .line 188
    .line 189
    if-ne v11, v12, :cond_8

    .line 190
    .line 191
    iget-object v11, v0, Lkp3;->d:Lto3;

    .line 192
    .line 193
    if-eqz v11, :cond_7

    .line 194
    .line 195
    invoke-virtual {v11}, Lto3;->isLocalSection()Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_6

    .line 200
    .line 201
    cmp-long v10, v4, v15

    .line 202
    .line 203
    if-nez v10, :cond_6

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    move v14, v7

    .line 207
    :goto_3
    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 208
    .line 209
    .line 210
    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-eqz v10, :cond_d

    .line 215
    .line 216
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-static {v10}, Lsz8;->r(Landroid/content/Context;)I

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    invoke-static {v10}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_7
    invoke-static {v13}, Lpe4;->F(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v10

    .line 236
    :cond_8
    const v12, 0x7f0a005a

    .line 237
    .line 238
    .line 239
    if-ne v11, v12, :cond_b

    .line 240
    .line 241
    iget-object v11, v0, Lkp3;->d:Lto3;

    .line 242
    .line 243
    if-eqz v11, :cond_a

    .line 244
    .line 245
    invoke-virtual {v11}, Lto3;->isLocalSection()Z

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    if-eqz v10, :cond_9

    .line 250
    .line 251
    cmp-long v10, v4, v15

    .line 252
    .line 253
    if-lez v10, :cond_9

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_9
    move v14, v7

    .line 257
    :goto_4
    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 258
    .line 259
    .line 260
    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-eqz v10, :cond_d

    .line 265
    .line 266
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    invoke-static {v10}, Lsz8;->r(Landroid/content/Context;)I

    .line 271
    .line 272
    .line 273
    move-result v10

    .line 274
    invoke-static {v10}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 279
    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_a
    invoke-static {v13}, Lpe4;->F(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v10

    .line 286
    :cond_b
    const v12, 0x7f0a0057

    .line 287
    .line 288
    .line 289
    if-ne v11, v12, :cond_d

    .line 290
    .line 291
    iget-object v11, v0, Lkp3;->d:Lto3;

    .line 292
    .line 293
    if-eqz v11, :cond_c

    .line 294
    .line 295
    invoke-virtual {v11}, Lto3;->isCloudSection()Z

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    .line 301
    .line 302
    invoke-interface {v8}, Landroid/view/MenuItem;->isVisible()Z

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    if-eqz v10, :cond_d

    .line 307
    .line 308
    invoke-virtual {v0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    invoke-static {v10}, Lsz8;->r(Landroid/content/Context;)I

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    invoke-static {v10}, Lsz8;->h0(I)Landroid/content/res/ColorStateList;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :cond_c
    invoke-static {v13}, Lpe4;->F(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v10

    .line 328
    :cond_d
    :goto_5
    move v8, v9

    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_e
    invoke-static {}, Ll0;->a()V

    .line 332
    .line 333
    .line 334
    move-object v2, v10

    .line 335
    goto :goto_6

    .line 336
    :cond_f
    new-instance v1, Lgp3;

    .line 337
    .line 338
    invoke-direct {v1, v0, v3}, Lgp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    iput-object v1, v6, Ll90;->e:Ljava/lang/Object;

    .line 342
    .line 343
    invoke-virtual {v6}, Lu45;->j()V

    .line 344
    .line 345
    .line 346
    :goto_6
    return-object v2

    .line 347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
