.class public final synthetic Ltj;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lj90;
.implements Lg36;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/io/Serializable;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltj;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Ltj;->b:Ljava/io/Serializable;

    .line 4
    .line 5
    iput-object p3, p0, Ltj;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ltj;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 6
    .line 7
    iget-object v2, v0, Ltj;->b:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast v2, Liu;

    .line 10
    .line 11
    iget-object v0, v0, Ltj;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lji;

    .line 14
    .line 15
    sget v3, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 16
    .line 17
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const v4, 0x7f0a003c

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->Y()Lmk2;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lq05;->DEVICE:Lq05;

    .line 34
    .line 35
    invoke-static {v1}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance v8, Lhz;

    .line 43
    .line 44
    iget-object v9, v0, Lmk2;->e:Lji;

    .line 45
    .line 46
    if-eqz v9, :cond_0

    .line 47
    .line 48
    invoke-static {v2}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-static {}, Lz85;->w()Z

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    invoke-static {}, Lz85;->r()Lxp1;

    .line 57
    .line 58
    .line 59
    move-result-object v15

    .line 60
    sget-object v1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 66
    .line 67
    .line 68
    move-result-object v16

    .line 69
    const/16 v17, 0x0

    .line 70
    .line 71
    const/4 v12, 0x0

    .line 72
    const/4 v13, 0x0

    .line 73
    invoke-direct/range {v8 .. v17}, Lhz;-><init>(Lji;Ljava/util/List;Ljava/util/List;Lhk;Lorg/swiftapps/swiftbackup/tasks/model/SyncOption;ZLxp1;Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lky7;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-direct {v1, v2, v5}, Lty7;-><init>(II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v8, v1}, Lmk2;->l(Lkz;Lty7;)V

    .line 83
    .line 84
    .line 85
    return v6

    .line 86
    :cond_0
    const-string v0, "app"

    .line 87
    .line 88
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v7

    .line 92
    :cond_1
    const v4, 0x7f0a003a

    .line 93
    .line 94
    .line 95
    if-ne v3, v4, :cond_3

    .line 96
    .line 97
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 98
    .line 99
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    new-instance v0, Lh80;

    .line 106
    .line 107
    sget-object v3, Lq05;->CLOUD:Lq05;

    .line 108
    .line 109
    invoke-static {v3}, Lnc8;->I(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-direct {v0, v2, v3}, Lh80;-><init>(Liu;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    new-instance v2, Lcv;

    .line 117
    .line 118
    const/4 v3, 0x7

    .line 119
    invoke-direct {v2, v3, v1, v0}, Lcv;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v7, v2, v6}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 123
    .line 124
    .line 125
    return v6

    .line 126
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    sget-object v0, Lzn4;->a:Lzn4;

    .line 130
    .line 131
    new-instance v0, Lb56;

    .line 132
    .line 133
    invoke-direct {v0, v1, v5}, Lb56;-><init>(Lk28;I)V

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 137
    .line 138
    .line 139
    return v6

    .line 140
    :cond_3
    const v4, 0x7f0a003d

    .line 141
    .line 142
    .line 143
    const/16 v8, 0x8

    .line 144
    .line 145
    if-ne v3, v4, :cond_5

    .line 146
    .line 147
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 148
    .line 149
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    new-instance v0, Lh80;

    .line 156
    .line 157
    sget-object v3, Lq05;->DEVICE:Lq05;

    .line 158
    .line 159
    sget-object v4, Lq05;->CLOUD:Lq05;

    .line 160
    .line 161
    filled-new-array {v3, v4}, [Lq05;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v3}, Lfl1;->A0([Ljava/lang/Object;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-direct {v0, v2, v3}, Lh80;-><init>(Liu;Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    new-instance v2, Ld11;

    .line 173
    .line 174
    invoke-direct {v2, v8, v1, v0}, Ld11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v7, v2, v6}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 178
    .line 179
    .line 180
    return v6

    .line 181
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    sget-object v0, Lzn4;->a:Lzn4;

    .line 185
    .line 186
    new-instance v0, Lb56;

    .line 187
    .line 188
    invoke-direct {v0, v1, v5}, Lb56;-><init>(Lk28;I)V

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 192
    .line 193
    .line 194
    return v6

    .line 195
    :cond_5
    const v4, 0x7f0a0054

    .line 196
    .line 197
    .line 198
    if-ne v3, v4, :cond_7

    .line 199
    .line 200
    sget-boolean v0, Lmp6;->g:Z

    .line 201
    .line 202
    if-nez v0, :cond_6

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    const v0, 0x7f13049e

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const v2, 0x7f130238

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v0, v2, v8}, Lb05;->l(Lio1;Ljava/lang/String;Ljava/lang/String;I)Ls35;

    .line 225
    .line 226
    .line 227
    return v5

    .line 228
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    new-instance v0, Lhv1;

    .line 232
    .line 233
    const v3, 0x7f140160

    .line 234
    .line 235
    .line 236
    invoke-direct {v0, v1, v3}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 237
    .line 238
    .line 239
    new-instance v4, Ls35;

    .line 240
    .line 241
    invoke-direct {v4, v1, v3, v0, v7}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 242
    .line 243
    .line 244
    const v0, 0x7f1301df

    .line 245
    .line 246
    .line 247
    invoke-virtual {v4, v0}, Lv75;->v(I)V

    .line 248
    .line 249
    .line 250
    const v0, 0x7f13054e

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4, v0}, Lv75;->n(I)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Ljb1;

    .line 257
    .line 258
    invoke-direct {v0, v1, v2, v6}, Ljb1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    .line 259
    .line 260
    .line 261
    const v1, 0x7f1305d0

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v1, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    const v0, 0x7f1303ba

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v0, v7}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v4}, Ls35;->m()Lwa;

    .line 274
    .line 275
    .line 276
    return v6

    .line 277
    :cond_7
    const v2, 0x7f0a0083

    .line 278
    .line 279
    .line 280
    if-ne v3, v2, :cond_8

    .line 281
    .line 282
    new-instance v2, Lnh;

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-direct {v2, v1}, Lnh;-><init>(Lzm;)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Lxh;

    .line 291
    .line 292
    invoke-direct {v1, v0}, Lxh;-><init>(Lji;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v1}, Lnh;->n(Lk55;)V

    .line 296
    .line 297
    .line 298
    :cond_8
    return v6
.end method

.method public p(Ln58;Lz80;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ltj;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Llh6;

    .line 4
    .line 5
    iget-object v1, p0, Ltj;->b:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v1, Llh6;

    .line 8
    .line 9
    iget-object p0, p0, Ltj;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    iput-object p1, v0, Llh6;->a:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object p2, v1, Llh6;->a:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
