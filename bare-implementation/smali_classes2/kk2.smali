.class public final synthetic Lkk2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lkk2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lkk2;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lkk2;->c:Ljava/util/List;

    .line 6
    .line 7
    iput-object p3, p0, Lkk2;->d:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lkk2;->e:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lkk2;->a:I

    .line 4
    .line 5
    sget-object v2, Lbe8;->a:Lbe8;

    .line 6
    .line 7
    iget-object v3, v0, Lkk2;->e:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Lkk2;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Lkk2;->c:Ljava/util/List;

    .line 12
    .line 13
    iget-object v0, v0, Lkk2;->b:Ljava/lang/Object;

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    check-cast v0, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;

    .line 19
    .line 20
    check-cast v5, Ljava/util/ArrayList;

    .line 21
    .line 22
    check-cast v4, Lzc6;

    .line 23
    .line 24
    check-cast v3, Llk3;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_6

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    iget-boolean v1, v4, Lzc6;->e:Z

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-boolean v3, v4, Lzc6;->q:Z

    .line 54
    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    const v1, 0x7f1303bd

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    if-eqz v1, :cond_2

    .line 62
    .line 63
    const v1, 0x7f1303be

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const v1, 0x7f13026c

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-object v3, Lzn4;->a:Lzn4;

    .line 78
    .line 79
    new-instance v3, Lcv;

    .line 80
    .line 81
    const/16 v4, 0xe

    .line 82
    .line 83
    invoke-direct {v3, v4, v0, v1}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v3}, Lzn4;->e(Lbt3;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;->U:I

    .line 91
    .line 92
    sget-object v1, Lto3;->LOCAL:Lto3;

    .line 93
    .line 94
    invoke-static {v0, v1}, Lnc8;->k0(Lil0;Lto3;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v3}, Llk3;->c()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    sget-object v1, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 108
    .line 109
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_5

    .line 114
    .line 115
    sget v1, Lorg/swiftapps/swiftbackup/premium/PremiumActivity;->V:I

    .line 116
    .line 117
    invoke-static {v0}, Lrs9;->u(Lk28;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    sget v1, Lorg/swiftapps/swiftbackup/folders/ui/batch/FoldersBatchActivity;->Y:I

    .line 125
    .line 126
    invoke-static {v0, v3, v5}, Llg7;->G(Lil0;Llk3;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/home/search/HomeSearchActivity;->V()V

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_1
    return-object v2

    .line 133
    :pswitch_0
    move-object v1, v0

    .line 134
    check-cast v1, Lmk2;

    .line 135
    .line 136
    check-cast v4, Ljava/util/List;

    .line 137
    .line 138
    check-cast v3, Ljava/util/List;

    .line 139
    .line 140
    const-string v6, "app"

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v7

    .line 146
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 147
    .line 148
    invoke-static {}, Lorg/swiftapps/swiftbackup/SwiftApp$Companion;->c()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const v9, 0x7f1301f8

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v0}, Lqo0;->i(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sget-object v0, Lq05;->DEVICE:Lq05;

    .line 166
    .line 167
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    const/4 v10, 0x0

    .line 172
    if-eqz v9, :cond_7

    .line 173
    .line 174
    move-object v0, v10

    .line 175
    :cond_7
    sget-object v9, Lq05;->CLOUD:Lq05;

    .line 176
    .line 177
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    if-eqz v11, :cond_8

    .line 182
    .line 183
    move-object v9, v10

    .line 184
    :cond_8
    filled-new-array {v0, v9}, [Lq05;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0}, Lx50;->p0([Ljava/lang/Object;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v9, Lmy7;

    .line 193
    .line 194
    invoke-direct {v9, v4, v3}, Lmy7;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    new-instance v3, Loy7;

    .line 198
    .line 199
    invoke-direct {v3, v5, v0, v9}, Loy7;-><init>(Ljava/util/List;Ljava/util/List;Lny7;)V

    .line 200
    .line 201
    .line 202
    :try_start_0
    iget-object v0, v1, Lmk2;->e:Lji;

    .line 203
    .line 204
    if-eqz v0, :cond_a

    .line 205
    .line 206
    invoke-virtual {v0}, Lji;->getPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0, v3}, Lik;->a(Ljava/lang/String;Loy7;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_9
    iget-object v0, v1, Lmk2;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 223
    .line 224
    .line 225
    :goto_2
    move-object v0, v10

    .line 226
    goto :goto_4

    .line 227
    :catch_0
    move-exception v0

    .line 228
    move-object v14, v0

    .line 229
    goto :goto_3

    .line 230
    :cond_a
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_3
    sget-object v11, Lvr6;->INSTANCE:Lvr6;

    .line 235
    .line 236
    iget-object v12, v1, La55;->b:Ljava/lang/String;

    .line 237
    .line 238
    const/16 v16, 0x8

    .line 239
    .line 240
    const/16 v17, 0x0

    .line 241
    .line 242
    const-string v13, "deleteBackupParts"

    .line 243
    .line 244
    const/4 v15, 0x0

    .line 245
    invoke-static/range {v11 .. v17}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lvr6$a;ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v14}, Lio4;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    :goto_4
    const-wide/16 v3, 0x1f4

    .line 253
    .line 254
    invoke-static {v7, v8, v3, v4}, Lorg/swiftapps/swiftbackup/common/Const;->m(JJ)J

    .line 255
    .line 256
    .line 257
    move-result-wide v3

    .line 258
    invoke-static {v3, v4}, Lai8;->o(J)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Lqo0;->f()V

    .line 262
    .line 263
    .line 264
    sget-object v3, Lg00;->a:Lg00;

    .line 265
    .line 266
    iget-object v3, v1, Lmk2;->e:Lji;

    .line 267
    .line 268
    if-eqz v3, :cond_d

    .line 269
    .line 270
    invoke-virtual {v3}, Lji;->getPackageName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-static {v3}, Lg00;->F(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    if-eqz v0, :cond_c

    .line 278
    .line 279
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-nez v3, :cond_b

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_b
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-nez v3, :cond_c

    .line 291
    .line 292
    new-instance v3, Lgo0;

    .line 293
    .line 294
    invoke-direct {v3, v0}, Lgo0;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Lqo0;->e()Lix6;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0, v3}, Lix6;->k(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    :cond_c
    :goto_5
    return-object v2

    .line 305
    :cond_d
    invoke-static {v6}, Lpe4;->F(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v10

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
