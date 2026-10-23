.class public final Lft;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Liy;->a:Liy;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Liy;->f(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lft;->c:Ljava/util/List;

    .line 12
    .line 13
    const/16 p1, 0x1e

    .line 14
    .line 15
    iput p1, p0, Lft;->d:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lft;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "<hr />\n"

    .line 9
    .line 10
    const-string v3, "<meta charset=\"utf-8\"/>\n<h1 style=\"text-align:center\">&nbsp;</h1>\n\n<h1 style=\"text-align:center\"><span style=\"font-size:20px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>Apps list</strong></span></span></h1>\n\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\">Generated from Swift Backup on [dateGenerated]</span></span></p>\n\n<p>&nbsp;</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p><img src=\"data:image/png;base64,[base64Icon]\" style=\"float:right; margin-right:40px; width:[base64IconSize]\" /></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:20px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><strong>[index]. [appNameShort] </strong></span></span></p>\n\n<p style=\"margin-left:40px\"><span style=\"font-size:14px\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><a href=\"https://play.google.com/store/apps/details?id=[packageName]\" target=\"_blank\">Play Store</a>&nbsp; &nbsp;&nbsp;<a href=\"https://google.com/search?q=[appName]+apk+download+[packageName]\">Google search</a></span></span></p>\n\n<p style=\"margin-left:40px\">&nbsp;</p>\n"

    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {v3, v2, v4}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lft;->a:Ljava/lang/String;

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    invoke-static {v5, v6}, Lorg/swiftapps/swiftbackup/common/Const;->i(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v6, "[dateGenerated]"

    .line 31
    .line 32
    invoke-static {v1, v6, v5}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lft;->c:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v5, 0x0

    .line 46
    move v6, v5

    .line 47
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_8

    .line 52
    .line 53
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Lji;

    .line 60
    .line 61
    iget-object v8, p0, Lft;->b:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v8, :cond_2

    .line 64
    .line 65
    iget-object v8, p0, Lft;->a:Ljava/lang/String;

    .line 66
    .line 67
    if-nez v8, :cond_1

    .line 68
    .line 69
    invoke-static {v3, v2, v4}, Lnq7;->F0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    iput-object v8, p0, Lft;->a:Ljava/lang/String;

    .line 74
    .line 75
    :cond_1
    invoke-static {v3, v8, v4}, Lnq7;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-static {v8, v2, v4}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    iput-object v8, p0, Lft;->b:Ljava/lang/String;

    .line 84
    .line 85
    :cond_2
    const-string v9, "[index]"

    .line 86
    .line 87
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-static {v8, v9, v10}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    sget-object v9, Lj94;->a:Ljava/util/Set;

    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v9, Lsx3;

    .line 101
    .line 102
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v7}, Lji;->isInstalled()Z

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    invoke-direct {v9, v10, v11}, Lsx3;-><init>(Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    invoke-static {v9}, Lj94;->a(Lsx3;)Landroid/graphics/Bitmap;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    if-eqz v9, :cond_4

    .line 118
    .line 119
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    .line 120
    .line 121
    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    .line 123
    .line 124
    :try_start_0
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v12, 0x1e

    .line 127
    .line 128
    if-lt v11, v12, :cond_3

    .line 129
    .line 130
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->WEBP_LOSSY:Landroid/graphics/Bitmap$CompressFormat;

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    move-object p0, v0

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 137
    .line 138
    :goto_1
    const/16 v12, 0x50

    .line 139
    .line 140
    invoke-virtual {v9, v11, v12, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    invoke-static {v9, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    :catchall_1
    move-exception v0

    .line 160
    invoke-static {v10, p0}, Lrs9;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 161
    .line 162
    .line 163
    throw v0

    .line 164
    :cond_4
    const/4 v9, 0x0

    .line 165
    :goto_3
    if-nez v9, :cond_5

    .line 166
    .line 167
    move-object v9, v4

    .line 168
    :cond_5
    const-string v10, "[base64Icon]"

    .line 169
    .line 170
    invoke-static {v8, v10, v9}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    const-string v9, "[base64IconSize]"

    .line 175
    .line 176
    const-string v10, "96"

    .line 177
    .line 178
    invoke-static {v8, v9, v10}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    const-string v9, "[appName]"

    .line 183
    .line 184
    invoke-virtual {v7}, Lji;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v10

    .line 188
    invoke-static {v8, v9, v10}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    const-string v9, "[packageName]"

    .line 193
    .line 194
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-static {v8, v9, v10}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v7}, Lji;->getName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    const-string v11, "..."

    .line 211
    .line 212
    iget v12, p0, Lft;->d:I

    .line 213
    .line 214
    if-le v10, v12, :cond_6

    .line 215
    .line 216
    add-int/lit8 v10, v12, -0x3

    .line 217
    .line 218
    invoke-static {v10, v9}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    :cond_6
    const-string v10, "[appNameShort]"

    .line 227
    .line 228
    invoke-static {v8, v10, v9}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v7}, Lji;->getPackageName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-le v10, v12, :cond_7

    .line 241
    .line 242
    add-int/lit8 v12, v12, -0x3

    .line 243
    .line 244
    invoke-static {v12, v9}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    :cond_7
    const-string v10, "[packageNameShort]"

    .line 253
    .line 254
    invoke-static {v8, v10, v9}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    invoke-virtual {v7}, Lji;->getVersionName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v9

    .line 262
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    const-string v10, "[versionName]"

    .line 267
    .line 268
    invoke-static {v8, v10, v9}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v7}, Lji;->getVersionCode()Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    const-string v9, "[versionCode]"

    .line 281
    .line 282
    invoke-static {v8, v9, v7}, Luq7;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_8
    const/4 v4, 0x0

    .line 292
    const/16 v5, 0x3e

    .line 293
    .line 294
    const-string v1, "\n"

    .line 295
    .line 296
    const/4 v2, 0x0

    .line 297
    const/4 v3, 0x0

    .line 298
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    return-object p0
.end method
