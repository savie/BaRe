.class public final synthetic Lti2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lg36;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

.field public final synthetic b:Liz4;

.field public final synthetic c:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lq05;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liz4;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;ZLjava/lang/String;Lq05;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lti2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lti2;->b:Liz4;

    .line 7
    .line 8
    iput-object p3, p0, Lti2;->c:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 9
    .line 10
    iput-boolean p4, p0, Lti2;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Lti2;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lti2;->f:Lq05;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lorg/swiftapps/swiftbackup/detail/DetailActivity;->b0:I

    .line 4
    .line 5
    const-string v1, "protect_backup_help_shown"

    .line 6
    .line 7
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const v3, 0x7f0a003b

    .line 12
    .line 13
    .line 14
    iget-object v6, v0, Lti2;->a:Lorg/swiftapps/swiftbackup/detail/DetailActivity;

    .line 15
    .line 16
    iget-object v7, v0, Lti2;->b:Liz4;

    .line 17
    .line 18
    iget-object v9, v0, Lti2;->c:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 19
    .line 20
    const/4 v10, 0x1

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    new-instance v0, Loj;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-direct {v0, v1, v7, v6, v9}, Loj;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    const v3, 0x7f0a0078

    .line 35
    .line 36
    .line 37
    iget-boolean v11, v0, Lti2;->d:Z

    .line 38
    .line 39
    iget-object v5, v0, Lti2;->f:Lq05;

    .line 40
    .line 41
    const v12, 0x7f140160

    .line 42
    .line 43
    .line 44
    const/4 v13, 0x0

    .line 45
    const/4 v14, 0x0

    .line 46
    if-ne v2, v3, :cond_5

    .line 47
    .line 48
    xor-int/lit8 v8, v11, 0x1

    .line 49
    .line 50
    if-nez v11, :cond_1

    .line 51
    .line 52
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 53
    .line 54
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    sget-object v0, Lzn4;->a:Lzn4;

    .line 61
    .line 62
    new-instance v0, Lb56;

    .line 63
    .line 64
    invoke-direct {v0, v6, v13}, Lb56;-><init>(Lk28;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 68
    .line 69
    .line 70
    return v10

    .line 71
    :cond_1
    new-instance v4, Lvi2;

    .line 72
    .line 73
    invoke-direct/range {v4 .. v9}, Lvi2;-><init>(Lq05;Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liz4;ZLorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 74
    .line 75
    .line 76
    if-nez v11, :cond_4

    .line 77
    .line 78
    :try_start_0
    sget-object v0, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-string v0, "prefs"

    .line 88
    .line 89
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v14
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move v0, v13

    .line 94
    :goto_0
    if-nez v0, :cond_4

    .line 95
    .line 96
    sget-object v0, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lhv1;

    .line 108
    .line 109
    invoke-direct {v0, v6, v12}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Ls35;

    .line 113
    .line 114
    invoke-direct {v1, v6, v12, v0, v14}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 115
    .line 116
    .line 117
    const v0, 0x7f130431

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Lv75;->v(I)V

    .line 121
    .line 122
    .line 123
    const v0, 0x7f130432

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lv75;->n(I)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lwi2;

    .line 130
    .line 131
    invoke-direct {v0, v4, v13}, Lwi2;-><init>(Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    const v2, 0x7f130299

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ls35;->m()Lwa;

    .line 141
    .line 142
    .line 143
    goto/16 :goto_3

    .line 144
    .line 145
    :cond_3
    const-string v0, "editor"

    .line 146
    .line 147
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v14

    .line 151
    :cond_4
    invoke-virtual {v4}, Lvi2;->invoke()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto/16 :goto_3

    .line 155
    .line 156
    :cond_5
    const v1, 0x7f0a008f

    .line 157
    .line 158
    .line 159
    if-ne v2, v1, :cond_6

    .line 160
    .line 161
    new-instance v1, Lyi2;

    .line 162
    .line 163
    invoke-direct {v1, v5, v6, v7, v9}, Lyi2;-><init>(Lq05;Lorg/swiftapps/swiftbackup/detail/DetailActivity;Liz4;Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v0, Lti2;->e:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v6, v0, v1}, Ltu0;->y(Lil0;Ljava/lang/String;Lmt3;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_3

    .line 172
    .line 173
    :cond_6
    const v0, 0x7f0a008c

    .line 174
    .line 175
    .line 176
    if-ne v2, v0, :cond_9

    .line 177
    .line 178
    sget-object v0, Lorg/swiftapps/swiftbackup/common/V;->INSTANCE:Lorg/swiftapps/swiftbackup/common/V;

    .line 179
    .line 180
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/common/V;->getA()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    if-eqz v7, :cond_7

    .line 187
    .line 188
    new-instance v0, Lkg;

    .line 189
    .line 190
    const/4 v1, 0x6

    .line 191
    invoke-direct {v0, v1, v6, v7}, Lkg;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v6, v14, v0, v10}, Lsa1;->R(Lsa1;Ldd1;Lbt3;I)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_3

    .line 198
    .line 199
    :cond_7
    sget-object v15, Lvr6;->INSTANCE:Lvr6;

    .line 200
    .line 201
    invoke-virtual {v6}, Lk28;->r()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v16

    .line 205
    const/16 v19, 0x4

    .line 206
    .line 207
    const/16 v20, 0x0

    .line 208
    .line 209
    const-string v17, "Null LocalAppBackupInfo!"

    .line 210
    .line 211
    const/16 v18, 0x0

    .line 212
    .line 213
    invoke-static/range {v15 .. v20}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_8
    sget-object v0, Lzn4;->a:Lzn4;

    .line 219
    .line 220
    new-instance v0, Lb56;

    .line 221
    .line 222
    invoke-direct {v0, v6, v13}, Lb56;-><init>(Lk28;I)V

    .line 223
    .line 224
    .line 225
    invoke-static {v0}, Lzn4;->e(Lbt3;)V

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_9
    const v0, 0x7f0a0054

    .line 230
    .line 231
    .line 232
    if-ne v2, v0, :cond_c

    .line 233
    .line 234
    invoke-virtual {v5}, Lq05;->isCloud()Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_a

    .line 239
    .line 240
    invoke-static {v6}, Lorg/swiftapps/swiftbackup/common/Const;->d(Lzm;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-nez v0, :cond_a

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_a
    new-instance v0, Lhv1;

    .line 248
    .line 249
    invoke-direct {v0, v6, v12}, Lhv1;-><init>(Landroid/content/Context;I)V

    .line 250
    .line 251
    .line 252
    new-instance v1, Ls35;

    .line 253
    .line 254
    invoke-direct {v1, v6, v12, v0, v14}, Ls35;-><init>(Lio1;ILhv1;Ljava/lang/Float;)V

    .line 255
    .line 256
    .line 257
    if-eqz v11, :cond_b

    .line 258
    .line 259
    const v0, 0x7f1301f6

    .line 260
    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_b
    const v0, 0x7f1301e5

    .line 264
    .line 265
    .line 266
    :goto_1
    invoke-virtual {v1, v0}, Lv75;->v(I)V

    .line 267
    .line 268
    .line 269
    const v0, 0x7f1305a8

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v0}, Lv75;->n(I)V

    .line 273
    .line 274
    .line 275
    const v0, 0x7f1303ba

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v0, v14}, Lv75;->q(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    new-instance v0, Lvq1;

    .line 282
    .line 283
    invoke-direct {v0, v10, v6, v7, v9}, Lvq1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    const v2, 0x7f1305d0

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v2, v0}, Lv75;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ls35;->m()Lwa;

    .line 293
    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_c
    const v0, 0x7f0a0070

    .line 297
    .line 298
    .line 299
    if-ne v2, v0, :cond_e

    .line 300
    .line 301
    if-eqz v7, :cond_d

    .line 302
    .line 303
    invoke-virtual {v7}, Liz4;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/LocalMetadata;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_d

    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_d
    if-eqz v9, :cond_e

    .line 311
    .line 312
    invoke-virtual {v9}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getMetadata()Lorg/swiftapps/swiftbackup/model/app/CloudMetadata;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    :goto_2
    sget-object v1, Lzn4;->a:Lzn4;

    .line 317
    .line 318
    new-instance v1, Lw01;

    .line 319
    .line 320
    invoke-direct {v1, v6, v0, v7}, Lw01;-><init>(Lorg/swiftapps/swiftbackup/detail/DetailActivity;Landroid/os/Parcelable;Liz4;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v1}, Lzn4;->c(Lbt3;)V

    .line 324
    .line 325
    .line 326
    :cond_e
    :goto_3
    return v10
.end method
