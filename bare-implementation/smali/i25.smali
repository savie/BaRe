.class public final Li25;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li25;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Li25;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Li25;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Li25;->a:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v1, Lzv1;->k:Lom5;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_3

    .line 7
    .line 8
    const-class v3, Lom5;

    .line 9
    .line 10
    monitor-enter v3

    .line 11
    :try_start_0
    sget-object v1, Lzv1;->k:Lom5;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    new-instance v1, Lom5;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v4, Lzv1;->l:Lkm5;

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    const-class v4, Lkm5;

    .line 26
    .line 27
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    sget-object v5, Lzv1;->l:Lkm5;

    .line 29
    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    new-instance v5, Lkm5;

    .line 33
    .line 34
    new-instance v6, Lke;

    .line 35
    .line 36
    const/16 v7, 0x9

    .line 37
    .line 38
    invoke-direct {v6, v0, v7}, Lke;-><init>(Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v6, v2}, Lkm5;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    sput-object v5, Lzv1;->l:Lkm5;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v4

    .line 50
    move-object v4, v5

    .line 51
    goto :goto_2

    .line 52
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    throw p0

    .line 54
    :cond_1
    :goto_2
    new-instance v0, Lma2;

    .line 55
    .line 56
    const/4 v5, 0x5

    .line 57
    invoke-direct {v0, v5}, Lma2;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, v4, v0}, Lom5;-><init>(Lkm5;Lma2;)V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lzv1;->k:Lom5;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    goto :goto_4

    .line 68
    :cond_2
    :goto_3
    monitor-exit v3

    .line 69
    goto :goto_5

    .line 70
    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    throw p0

    .line 72
    :cond_3
    :goto_5
    iget-object v0, p0, Li25;->b:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v3, p0, Li25;->c:Ljava/lang/String;

    .line 75
    .line 76
    sget-object v4, Lm73;->c:Lm73;

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    if-nez v3, :cond_5

    .line 80
    .line 81
    :cond_4
    :goto_6
    move-object v4, v5

    .line 82
    goto/16 :goto_a

    .line 83
    .line 84
    :cond_5
    iget-object v6, v1, Lom5;->a:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v6, Lkm5;

    .line 87
    .line 88
    :try_start_3
    new-instance v7, Ljava/io/File;

    .line 89
    .line 90
    invoke-virtual {v6}, Lkm5;->p()Ljava/io/File;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    sget-object v9, Lm73;->b:Lm73;

    .line 95
    .line 96
    invoke-static {v0, v9, v2}, Lkm5;->l(Ljava/lang/String;Lm73;Z)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_6

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_6
    new-instance v7, Ljava/io/File;

    .line 111
    .line 112
    invoke-virtual {v6}, Lkm5;->p()Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v0, v4, v2}, Lkm5;->l(Ljava/lang/String;Lm73;Z)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_7

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_7
    move-object v7, v5

    .line 131
    :goto_7
    if-nez v7, :cond_8

    .line 132
    .line 133
    :catch_0
    move-object v7, v5

    .line 134
    goto :goto_8

    .line 135
    :cond_8
    new-instance v6, Ljava/io/FileInputStream;

    .line 136
    .line 137
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    const-string v10, ".zip"

    .line 145
    .line 146
    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eqz v8, :cond_9

    .line 151
    .line 152
    move-object v9, v4

    .line 153
    :cond_9
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lm15;->a()V

    .line 157
    .line 158
    .line 159
    new-instance v7, Landroid/util/Pair;

    .line 160
    .line 161
    invoke-direct {v7, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :goto_8
    if-nez v7, :cond_a

    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_a
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v6, Lm73;

    .line 170
    .line 171
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v7, Ljava/io/InputStream;

    .line 174
    .line 175
    if-ne v6, v4, :cond_b

    .line 176
    .line 177
    new-instance v4, Ljava/util/zip/ZipInputStream;

    .line 178
    .line 179
    invoke-direct {v4, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v4, v0}, Ln25;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lg35;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    goto :goto_9

    .line 187
    :cond_b
    invoke-static {v7, v0}, Ln25;->c(Ljava/io/InputStream;Ljava/lang/String;)Lg35;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    :goto_9
    iget-object v4, v4, Lg35;->a:Ljava/lang/Object;

    .line 192
    .line 193
    if-eqz v4, :cond_4

    .line 194
    .line 195
    check-cast v4, Le25;

    .line 196
    .line 197
    :goto_a
    if-eqz v4, :cond_c

    .line 198
    .line 199
    new-instance v0, Lg35;

    .line 200
    .line 201
    invoke-direct {v0, v4}, Lg35;-><init>(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    goto :goto_e

    .line 205
    :cond_c
    invoke-static {}, Lm15;->a()V

    .line 206
    .line 207
    .line 208
    const-string v4, "LottieFetchResult close failed "

    .line 209
    .line 210
    invoke-static {}, Lm15;->a()V

    .line 211
    .line 212
    .line 213
    :try_start_4
    invoke-static {v0}, Lma2;->q(Ljava/lang/String;)Lff2;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    iget-object v6, v5, Lff2;->a:Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 218
    .line 219
    :try_start_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    div-int/lit8 v7, v7, 0x64
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 224
    .line 225
    const/4 v8, 0x2

    .line 226
    if-ne v7, v8, :cond_d

    .line 227
    .line 228
    const/4 v2, 0x1

    .line 229
    :catch_1
    :cond_d
    if-eqz v2, :cond_e

    .line 230
    .line 231
    :try_start_6
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v1, v0, v2, v6, v3}, Lom5;->d(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lg35;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-static {}, Lm15;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 244
    .line 245
    .line 246
    :goto_b
    :try_start_7
    invoke-virtual {v5}, Lff2;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 247
    .line 248
    .line 249
    goto :goto_e

    .line 250
    :catch_2
    move-exception v1

    .line 251
    invoke-static {v4, v1}, Lm15;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    goto :goto_e

    .line 255
    :catchall_2
    move-exception p0

    .line 256
    goto :goto_f

    .line 257
    :catch_3
    move-exception v0

    .line 258
    goto :goto_c

    .line 259
    :cond_e
    :try_start_8
    new-instance v0, Lg35;

    .line 260
    .line 261
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 262
    .line 263
    invoke-virtual {v5}, Lff2;->a()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-direct {v0, v1}, Lg35;-><init>(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 271
    .line 272
    .line 273
    goto :goto_b

    .line 274
    :goto_c
    :try_start_9
    new-instance v1, Lg35;

    .line 275
    .line 276
    invoke-direct {v1, v0}, Lg35;-><init>(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 277
    .line 278
    .line 279
    if-eqz v5, :cond_f

    .line 280
    .line 281
    :try_start_a
    invoke-virtual {v5}, Lff2;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 282
    .line 283
    .line 284
    goto :goto_d

    .line 285
    :catch_4
    move-exception v0

    .line 286
    invoke-static {v4, v0}, Lm15;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    :cond_f
    :goto_d
    move-object v0, v1

    .line 290
    :goto_e
    iget-object p0, p0, Li25;->c:Ljava/lang/String;

    .line 291
    .line 292
    if-eqz p0, :cond_10

    .line 293
    .line 294
    iget-object v1, v0, Lg35;->a:Ljava/lang/Object;

    .line 295
    .line 296
    if-eqz v1, :cond_10

    .line 297
    .line 298
    sget-object v2, Lf25;->b:Lf25;

    .line 299
    .line 300
    check-cast v1, Le25;

    .line 301
    .line 302
    iget-object v2, v2, Lf25;->a:Lp35;

    .line 303
    .line 304
    invoke-virtual {v2, p0, v1}, Lp35;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    :cond_10
    return-object v0

    .line 308
    :goto_f
    if-eqz v5, :cond_11

    .line 309
    .line 310
    :try_start_b
    invoke-virtual {v5}, Lff2;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 311
    .line 312
    .line 313
    goto :goto_10

    .line 314
    :catch_5
    move-exception v0

    .line 315
    invoke-static {v4, v0}, Lm15;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    .line 317
    .line 318
    :cond_11
    :goto_10
    throw p0
.end method
