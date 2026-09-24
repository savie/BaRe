.class public abstract Lcg;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public static a(Ljava/util/List;Ljava/util/List;)Lbg;
    .locals 21

    .line 1
    new-instance v0, Lxg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lxg;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lyg;

    .line 8
    .line 9
    invoke-direct {v2, v0, v1}, Lyg;-><init>(Ljava/util/Comparator;I)V

    .line 10
    .line 11
    .line 12
    move-object/from16 v0, p0

    .line 13
    .line 14
    invoke-static {v0, v2}, Lel1;->n1(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lel1;->U0(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, Lq63;

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lxh8;->B(Ljava/util/List;)Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static/range {p1 .. p1}, Lxh8;->A(Ljava/util/List;)Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    sget-object v0, Lg00;->a:Lg00;

    .line 37
    .line 38
    invoke-static {v3, v1}, Lg00;->p(Lq63;I)Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v1, v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v1, v6

    .line 45
    :goto_0
    sget-object v0, Ldg;->a:Lai6;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object v0, v6

    .line 53
    :goto_1
    invoke-static {v0}, Ldg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v7, "Swift Backup metadata"

    .line 58
    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    if-eqz v8, :cond_2

    .line 66
    .line 67
    invoke-static {v8, v7}, Ldg;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move-object v8, v6

    .line 73
    :goto_2
    const-string v9, "SAI metadata"

    .line 74
    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    if-eqz v10, :cond_3

    .line 82
    .line 83
    invoke-static {v10, v9}, Ldg;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    move-object v10, v6

    .line 89
    :goto_3
    invoke-static {v8, v0, v7}, Ldg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v10, v0, v9}, Ldg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    if-nez v8, :cond_4

    .line 98
    .line 99
    move-object v14, v10

    .line 100
    goto :goto_4

    .line 101
    :cond_4
    move-object v14, v8

    .line 102
    goto :goto_4

    .line 103
    :cond_5
    move-object v14, v0

    .line 104
    :goto_4
    if-eqz v3, :cond_8

    .line 105
    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v3}, Lq63;->v()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    iput-object v7, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 123
    .line 124
    :try_start_0
    sget-object v7, Lg00;->a:Lg00;

    .line 125
    .line 126
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    goto :goto_5

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    new-instance v7, Lbn6;

    .line 141
    .line 142
    invoke-direct {v7, v0}, Lbn6;-><init>(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    move-object v0, v7

    .line 146
    :goto_5
    nop

    .line 147
    instance-of v7, v0, Lbn6;

    .line 148
    .line 149
    if-eqz v7, :cond_6

    .line 150
    .line 151
    move-object v0, v6

    .line 152
    :cond_6
    check-cast v0, Ljava/lang/String;

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_7
    move-object v0, v6

    .line 156
    :goto_6
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-nez v7, :cond_8

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_8
    move-object v0, v6

    .line 166
    :goto_7
    if-eqz v1, :cond_9

    .line 167
    .line 168
    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 169
    .line 170
    if-nez v7, :cond_c

    .line 171
    .line 172
    :cond_9
    if-eqz v4, :cond_a

    .line 173
    .line 174
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getVersionName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    goto :goto_8

    .line 179
    :cond_a
    move-object v7, v6

    .line 180
    :goto_8
    if-nez v7, :cond_c

    .line 181
    .line 182
    if-eqz v5, :cond_b

    .line 183
    .line 184
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->getVersionName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    goto :goto_9

    .line 189
    :cond_b
    move-object v7, v6

    .line 190
    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    .line 191
    .line 192
    invoke-static {v1}, Ljd4;->r(Landroid/content/pm/PackageInfo;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v8

    .line 196
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    :cond_d
    :goto_a
    move-object/from16 v16, v1

    .line 201
    .line 202
    goto :goto_c

    .line 203
    :cond_e
    if-eqz v4, :cond_f

    .line 204
    .line 205
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getVersionCode()Ljava/lang/Long;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    goto :goto_b

    .line 210
    :cond_f
    move-object v1, v6

    .line 211
    :goto_b
    if-nez v1, :cond_d

    .line 212
    .line 213
    if-eqz v5, :cond_10

    .line 214
    .line 215
    invoke-virtual {v5}, Lorg/swiftapps/swiftbackup/apkshare/SaiApksMetadata;->getVersionCode()Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    goto :goto_a

    .line 220
    :cond_10
    move-object/from16 v16, v6

    .line 221
    .line 222
    :goto_c
    if-eqz v3, :cond_11

    .line 223
    .line 224
    sget-object v1, Lg00;->a:Lg00;

    .line 225
    .line 226
    invoke-static {v3}, Lg00;->o(Lq63;)Landroid/graphics/drawable/Drawable;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    move-object v12, v1

    .line 231
    goto :goto_d

    .line 232
    :cond_11
    move-object v12, v6

    .line 233
    :goto_d
    if-nez v0, :cond_13

    .line 234
    .line 235
    if-eqz v4, :cond_12

    .line 236
    .line 237
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getAppName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-eqz v0, :cond_12

    .line 242
    .line 243
    invoke-static {v0}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_12

    .line 248
    .line 249
    goto :goto_e

    .line 250
    :cond_12
    move-object v0, v6

    .line 251
    :goto_e
    if-nez v0, :cond_13

    .line 252
    .line 253
    if-nez v14, :cond_14

    .line 254
    .line 255
    sget-object v0, Lorg/swiftapps/swiftbackup/SwiftApp;->d:Lorg/swiftapps/swiftbackup/SwiftApp$Companion;

    .line 256
    .line 257
    const v0, 0x7f130580

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Ldj7;->g(I)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :cond_13
    move-object v13, v0

    .line 265
    goto :goto_f

    .line 266
    :cond_14
    move-object v13, v14

    .line 267
    :goto_f
    if-eqz v7, :cond_15

    .line 268
    .line 269
    invoke-static {v7}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-nez v0, :cond_15

    .line 274
    .line 275
    const-string v0, "null"

    .line 276
    .line 277
    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_15

    .line 282
    .line 283
    move-object v15, v7

    .line 284
    goto :goto_10

    .line 285
    :cond_15
    move-object v15, v6

    .line 286
    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v17

    .line 290
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    const-wide/16 v1, 0x0

    .line 295
    .line 296
    move-wide/from16 v18, v1

    .line 297
    .line 298
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_16

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Lq63;

    .line 309
    .line 310
    invoke-virtual {v1}, Lq63;->A()J

    .line 311
    .line 312
    .line 313
    move-result-wide v1

    .line 314
    add-long v18, v1, v18

    .line 315
    .line 316
    goto :goto_11

    .line 317
    :cond_16
    sget-object v0, Ldg;->a:Lai6;

    .line 318
    .line 319
    if-eqz v4, :cond_17

    .line 320
    .line 321
    invoke-virtual {v4}, Lorg/swiftapps/swiftbackup/apkshare/ApkSharePackageMetadata;->getInstallerPackage()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    :cond_17
    invoke-static {v6}, Ldg;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v20

    .line 329
    new-instance v11, Lbg;

    .line 330
    .line 331
    invoke-direct/range {v11 .. v20}, Lbg;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IJLjava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return-object v11
.end method
