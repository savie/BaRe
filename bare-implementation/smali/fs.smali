.class public final synthetic Lfs;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ldu7;
.implements Lh9;
.implements Lcom/nimbusds/jose/shaded/gson/internal/ObjectConstructor;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lll5;
.implements Lg36;
.implements Lhm6;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lfs;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lfs;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object p0, p0, Lfs;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/pcloud/sdk/internal/a;

    .line 4
    .line 5
    const-class v0, Lfw3;

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/pcloud/sdk/internal/a;->f(Lokhttp3/Response;Ljava/lang/Class;)Lgf;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lfw3;

    .line 12
    .line 13
    invoke-virtual {p0}, Lsu1;->e()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lsu1;->f()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    new-instance v3, Ljava/net/URL;

    .line 47
    .line 48
    const-string v4, "https"

    .line 49
    .line 50
    invoke-direct {v3, v4, v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance p1, Luf6;

    .line 58
    .line 59
    invoke-virtual {p0}, Lsu1;->d()Ljava/util/Date;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lfw3;->g()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {p1, v0, v1, p0}, Luf6;-><init>(Ljava/util/Date;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object p0, p0, Lfs;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;

    .line 4
    .line 5
    sget v0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->q0()Ltt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1, v1}, Ltt;->k(ZZ)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/list/AppListActivity;->m0:Lgv7;

    .line 16
    .line 17
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/l4digital/fastscroll/FastScroller;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/l4digital/fastscroll/FastScroller;->setEnabled(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public c(Lgh;)Lc31;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lfs;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ld31;

    .line 8
    .line 9
    iget-object v2, v1, Lgh;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/net/URL;

    .line 12
    .line 13
    const-string v3, "TRuntime."

    .line 14
    .line 15
    const-string v4, "CctTransportBackend"

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x4

    .line 22
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-eqz v7, :cond_0

    .line 27
    .line 28
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    const-string v8, "Making request to: %s"

    .line 33
    .line 34
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 46
    .line 47
    const/16 v5, 0x7530

    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 50
    .line 51
    .line 52
    iget v5, v0, Ld31;->g:I

    .line 53
    .line 54
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 59
    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 63
    .line 64
    .line 65
    const-string v5, "POST"

    .line 66
    .line 67
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v5, "User-Agent"

    .line 71
    .line 72
    const-string v7, "datatransport/3.3.0 android/"

    .line 73
    .line 74
    invoke-virtual {v2, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v5, "Content-Encoding"

    .line 78
    .line 79
    const-string v7, "gzip"

    .line 80
    .line 81
    invoke-virtual {v2, v5, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v8, "application/json"

    .line 85
    .line 86
    const-string v9, "Content-Type"

    .line 87
    .line 88
    invoke-virtual {v2, v9, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v8, "Accept-Encoding"

    .line 92
    .line 93
    invoke-virtual {v2, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v8, v1, Lgh;->c:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v8, Ljava/lang/String;

    .line 99
    .line 100
    if-eqz v8, :cond_1

    .line 101
    .line 102
    const-string v10, "X-Goog-Api-Key"

    .line 103
    .line 104
    invoke-virtual {v2, v10, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 108
    .line 109
    .line 110
    move-result-object v12
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lfw2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :try_start_1
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    .line 112
    .line 113
    invoke-direct {v13, v12}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 114
    .line 115
    .line 116
    :try_start_2
    iget-object v0, v0, Ld31;->a:Lom5;

    .line 117
    .line 118
    iget-object v1, v1, Lgh;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Ltb0;

    .line 121
    .line 122
    new-instance v15, Ljava/io/BufferedWriter;

    .line 123
    .line 124
    new-instance v14, Ljava/io/OutputStreamWriter;

    .line 125
    .line 126
    invoke-direct {v14, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v15, v14}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 130
    .line 131
    .line 132
    new-instance v14, Lin4;

    .line 133
    .line 134
    iget-object v0, v0, Lom5;->a:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, Lkj4;

    .line 137
    .line 138
    iget-object v8, v0, Lkj4;->a:Ljava/util/HashMap;

    .line 139
    .line 140
    iget-object v10, v0, Lkj4;->b:Ljava/util/HashMap;

    .line 141
    .line 142
    iget-object v11, v0, Lkj4;->c:Lgj4;

    .line 143
    .line 144
    iget-boolean v0, v0, Lkj4;->d:Z

    .line 145
    .line 146
    move/from16 v19, v0

    .line 147
    .line 148
    move-object/from16 v16, v8

    .line 149
    .line 150
    move-object/from16 v17, v10

    .line 151
    .line 152
    move-object/from16 v18, v11

    .line 153
    .line 154
    invoke-direct/range {v14 .. v19}, Lin4;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lgj4;Z)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v14, v1}, Lin4;->h(Ljava/lang/Object;)Lin4;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v14}, Lin4;->j()V

    .line 161
    .line 162
    .line 163
    iget-object v0, v14, Lin4;->b:Landroid/util/JsonWriter;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 166
    .line 167
    .line 168
    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 169
    .line 170
    .line 171
    if-eqz v12, :cond_2

    .line 172
    .line 173
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lfw2; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    goto/16 :goto_d

    .line 179
    .line 180
    :catch_1
    move-exception v0

    .line 181
    goto/16 :goto_d

    .line 182
    .line 183
    :catch_2
    move-exception v0

    .line 184
    :goto_0
    const-wide/16 v2, 0x0

    .line 185
    .line 186
    const/4 v6, 0x0

    .line 187
    goto/16 :goto_e

    .line 188
    .line 189
    :catch_3
    move-exception v0

    .line 190
    goto :goto_0

    .line 191
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-eqz v6, :cond_3

    .line 208
    .line 209
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string v6, "Status Code: %d"

    .line 214
    .line 215
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    :cond_3
    const-string v1, "Content-Type: %s"

    .line 223
    .line 224
    invoke-virtual {v2, v9}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-static {v4, v1, v3}, Lly8;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    const-string v1, "Content-Encoding: %s"

    .line 232
    .line 233
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    invoke-static {v4, v1, v3}, Lly8;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    const/16 v1, 0x12e

    .line 241
    .line 242
    if-eq v0, v1, :cond_b

    .line 243
    .line 244
    const/16 v1, 0x12d

    .line 245
    .line 246
    if-eq v0, v1, :cond_b

    .line 247
    .line 248
    const/16 v1, 0x133

    .line 249
    .line 250
    if-ne v0, v1, :cond_4

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_4
    const/16 v1, 0xc8

    .line 254
    .line 255
    if-eq v0, v1, :cond_5

    .line 256
    .line 257
    new-instance v1, Lc31;

    .line 258
    .line 259
    const-wide/16 v2, 0x0

    .line 260
    .line 261
    const/4 v4, 0x0

    .line 262
    invoke-direct {v1, v0, v4, v2, v3}, Lc31;-><init>(ILjava/net/URL;J)V

    .line 263
    .line 264
    .line 265
    return-object v1

    .line 266
    :cond_5
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    :try_start_5
    invoke-virtual {v2, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_6

    .line 279
    .line 280
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .line 281
    .line 282
    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_6
    move-object v2, v1

    .line 287
    :goto_2
    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    .line 288
    .line 289
    new-instance v4, Ljava/io/InputStreamReader;

    .line 290
    .line 291
    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 292
    .line 293
    .line 294
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v3}, Lae0;->a(Ljava/io/BufferedReader;)Lae0;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    iget-wide v3, v3, Lae0;->a:J

    .line 302
    .line 303
    new-instance v5, Lc31;

    .line 304
    .line 305
    const/4 v6, 0x0

    .line 306
    invoke-direct {v5, v0, v6, v3, v4}, Lc31;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 307
    .line 308
    .line 309
    if-eqz v2, :cond_7

    .line 310
    .line 311
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    move-object v2, v0

    .line 317
    goto :goto_5

    .line 318
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 319
    .line 320
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 321
    .line 322
    .line 323
    :cond_8
    return-object v5

    .line 324
    :catchall_1
    move-exception v0

    .line 325
    move-object v3, v0

    .line 326
    if-eqz v2, :cond_9

    .line 327
    .line 328
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :catchall_2
    move-exception v0

    .line 333
    :try_start_9
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    :cond_9
    :goto_4
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 337
    :goto_5
    if-eqz v1, :cond_a

    .line 338
    .line 339
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 340
    .line 341
    .line 342
    goto :goto_6

    .line 343
    :catchall_3
    move-exception v0

    .line 344
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 345
    .line 346
    .line 347
    :cond_a
    :goto_6
    throw v2

    .line 348
    :cond_b
    :goto_7
    const-string v1, "Location"

    .line 349
    .line 350
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    new-instance v2, Lc31;

    .line 355
    .line 356
    new-instance v3, Ljava/net/URL;

    .line 357
    .line 358
    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-wide/16 v4, 0x0

    .line 362
    .line 363
    invoke-direct {v2, v0, v3, v4, v5}, Lc31;-><init>(ILjava/net/URL;J)V

    .line 364
    .line 365
    .line 366
    return-object v2

    .line 367
    :catchall_4
    move-exception v0

    .line 368
    move-object v1, v0

    .line 369
    goto :goto_b

    .line 370
    :goto_8
    move-object v1, v0

    .line 371
    goto :goto_9

    .line 372
    :catchall_5
    move-exception v0

    .line 373
    goto :goto_8

    .line 374
    :goto_9
    :try_start_b
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 375
    .line 376
    .line 377
    goto :goto_a

    .line 378
    :catchall_6
    move-exception v0

    .line 379
    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 380
    .line 381
    .line 382
    :goto_a
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 383
    :goto_b
    if-eqz v12, :cond_c

    .line 384
    .line 385
    :try_start_d
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 386
    .line 387
    .line 388
    goto :goto_c

    .line 389
    :catchall_7
    move-exception v0

    .line 390
    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 391
    .line 392
    .line 393
    :cond_c
    :goto_c
    throw v1
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lfw2; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 394
    :goto_d
    const-string v1, "Couldn\'t encode request, returning with 400"

    .line 395
    .line 396
    invoke-static {v0, v4, v1}, Lly8;->p(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    new-instance v0, Lc31;

    .line 400
    .line 401
    const/16 v1, 0x190

    .line 402
    .line 403
    const-wide/16 v2, 0x0

    .line 404
    .line 405
    const/4 v6, 0x0

    .line 406
    invoke-direct {v0, v1, v6, v2, v3}, Lc31;-><init>(ILjava/net/URL;J)V

    .line 407
    .line 408
    .line 409
    goto :goto_f

    .line 410
    :goto_e
    const-string v1, "Couldn\'t open connection, returning with 500"

    .line 411
    .line 412
    invoke-static {v0, v4, v1}, Lly8;->p(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    new-instance v0, Lc31;

    .line 416
    .line 417
    const/16 v1, 0x1f4

    .line 418
    .line 419
    invoke-direct {v0, v1, v6, v2, v3}, Lc31;-><init>(ILjava/net/URL;J)V

    .line 420
    .line 421
    .line 422
    :goto_f
    return-object v0
.end method

.method public construct()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lfs;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lfs;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/reflect/Type;

    .line 9
    .line 10
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->d(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/nimbusds/jose/shaded/gson/internal/ConstructorConstructor;->e(Ljava/lang/reflect/Constructor;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lfs;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/a;

    .line 4
    .line 5
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->Companion:Lorg/swiftapps/swiftbackup/settings/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, "apps_multiple_backups_strategy"

    .line 25
    .line 26
    invoke-static {p1, v1}, Lw14;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lorg/swiftapps/swiftbackup/settings/b;->c()Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/settings/a;->G:Lgv7;

    .line 37
    .line 38
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroidx/preference/Preference;

    .line 43
    .line 44
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/settings/f;->a(Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy;)Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$Representation;->preferenceSummary()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->B(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfs;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lbt3;

    .line 4
    .line 5
    invoke-static {p0, p1}, Lah8$a;->a(Lbt3;Lcom/google/android/gms/tasks/Task;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget v0, p0, Lfs;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const v2, 0x7f0a008b

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lfs;->b:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lkn3;

    .line 13
    .line 14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-ne p1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lkn3;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    return v1

    .line 26
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;

    .line 27
    .line 28
    sget v0, Lorg/swiftapps/swiftbackup/intro/IntroActivity;->V:I

    .line 29
    .line 30
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const v0, 0x7f0a0068

    .line 35
    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    const-class p1, Lorg/swiftapps/swiftbackup/locale/LocaleActivity;

    .line 40
    .line 41
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-ne p1, v2, :cond_2

    .line 46
    .line 47
    const-class p1, Lorg/swiftapps/swiftbackup/slog/SLogActivity;

    .line 48
    .line 49
    invoke-static {p0, p1}, Lai8;->q(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const v0, 0x7f0a007a

    .line 54
    .line 55
    .line 56
    if-ne p1, v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Lk28;->r()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, ": Restart option"

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/common/Const;->E(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    return v1

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lfs;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lk32;

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;->$r8$lambda$LBZnVkbW-B8CRzdw0L5Xdm213kE(Lk32;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
