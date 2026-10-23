.class public Lzf7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final q:Lna4;


# instance fields
.field public final a:Lokhttp3/Request;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/time/ZonedDateTime;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/TreeMap;

.field public i:Ljava/lang/String;

.field public j:Lokhttp3/HttpUrl;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:[B

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "Accept-Encoding"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "Authorization"

    .line 10
    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const-string v5, "User-Agent"

    .line 16
    .line 17
    invoke-virtual {v5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    const/4 v7, 0x3

    .line 22
    filled-new-array {v2, v4, v6}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v7, v2}, Lna4;->y(I[Ljava/lang/Object;)Lna4;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sput-object v2, Lzf7;->q:Lna4;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const-string v1, "Content-Md5"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    const-string v1, "X-Amz-Content-Sha256"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    const-string v1, "X-Amz-Date"

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v11

    .line 62
    const-string v1, "X-Amz-Security-Token"

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    filled-new-array {v0}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    invoke-static/range {v6 .. v12}, Lna4;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lna4;

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private constructor <init>(Lokhttp3/Request;Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzf7;->a:Lokhttp3/Request;

    .line 5
    .line 6
    iput-object p2, p0, Lzf7;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lzf7;->c:Ljava/time/ZonedDateTime;

    .line 9
    .line 10
    iput-object p4, p0, Lzf7;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lzf7;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lzf7;->f:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 16

    .line 1
    const-string v0, "X-Amz-Date"

    .line 2
    .line 3
    move-object/from16 v2, p0

    .line 4
    .line 5
    iget-object v1, v2, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lokhttp3/Headers;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lh38;->b:Ljava/time/format/DateTimeFormatter;

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    new-instance v1, Lzf7;

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    move-object/from16 v5, p1

    .line 21
    .line 22
    move-object/from16 v6, p2

    .line 23
    .line 24
    move-object/from16 v7, p3

    .line 25
    .line 26
    move-object/from16 v3, p4

    .line 27
    .line 28
    invoke-direct/range {v1 .. v8}, Lzf7;-><init>(Lokhttp3/Request;Ljava/lang/String;Ljava/time/ZonedDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    sget-object v2, Lh38;->d:Ljava/time/format/DateTimeFormatter;

    .line 37
    .line 38
    iget-object v3, v1, Lzf7;->c:Ljava/time/ZonedDateTime;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "/"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v4, "/s3/aws4_request"

    .line 53
    .line 54
    iget-object v5, v1, Lzf7;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0, v5, v4}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, v1, Lzf7;->g:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/util/TreeMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, v1, Lzf7;->h:Ljava/util/TreeMap;

    .line 68
    .line 69
    iget-object v4, v1, Lzf7;->a:Lokhttp3/Request;

    .line 70
    .line 71
    iget-object v0, v4, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v6, Ljava/util/TreeSet;

    .line 77
    .line 78
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-direct {v6, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    const/4 v9, 0x0

    .line 91
    :goto_0
    if-ge v9, v7, :cond_0

    .line 92
    .line 93
    invoke-virtual {v0, v9}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v6, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    add-int/lit8 v9, v9, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_2

    .line 119
    .line 120
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Ljava/lang/String;

    .line 125
    .line 126
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 127
    .line 128
    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    sget-object v10, Lzf7;->q:Lna4;

    .line 133
    .line 134
    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    if-nez v10, :cond_1

    .line 139
    .line 140
    iget-object v10, v1, Lzf7;->h:Ljava/util/TreeMap;

    .line 141
    .line 142
    invoke-virtual {v0, v7}, Lokhttp3/Headers;->i(Ljava/lang/String;)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    new-instance v11, Lxf7;

    .line 151
    .line 152
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 153
    .line 154
    .line 155
    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    const-string v11, ","

    .line 160
    .line 161
    invoke-static {v11}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 162
    .line 163
    .line 164
    move-result-object v11

    .line 165
    invoke-interface {v7, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v10, v9, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    new-instance v0, Lsg9;

    .line 174
    .line 175
    const-string v6, ";"

    .line 176
    .line 177
    const/4 v7, 0x3

    .line 178
    invoke-direct {v0, v6, v7}, Lsg9;-><init>(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    iget-object v6, v1, Lzf7;->h:Ljava/util/TreeMap;

    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v0, v6}, Lsg9;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, v1, Lzf7;->i:Ljava/lang/String;

    .line 192
    .line 193
    iget-object v0, v4, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 194
    .line 195
    iput-object v0, v1, Lzf7;->j:Lokhttp3/HttpUrl;

    .line 196
    .line 197
    iget-object v0, v1, Lzf7;->j:Lokhttp3/HttpUrl;

    .line 198
    .line 199
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const/4 v6, 0x5

    .line 204
    const-string v9, ""

    .line 205
    .line 206
    if-nez v0, :cond_3

    .line 207
    .line 208
    iput-object v9, v1, Lzf7;->k:Ljava/lang/String;

    .line 209
    .line 210
    const/16 p1, 0x0

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_3
    const/4 v10, 0x2

    .line 214
    const-string v11, "expectedValuesPerKey"

    .line 215
    .line 216
    invoke-static {v10, v11}, Llg7;->c(ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v10, Ljava/util/TreeMap;

    .line 220
    .line 221
    sget-object v11, Lvk5;->a:Lvk5;

    .line 222
    .line 223
    invoke-direct {v10, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 224
    .line 225
    .line 226
    new-instance v11, Lui5;

    .line 227
    .line 228
    invoke-direct {v11}, Lui5;-><init>()V

    .line 229
    .line 230
    .line 231
    new-instance v12, Lvi5;

    .line 232
    .line 233
    invoke-direct {v12, v10}, Lq4;-><init>(Ljava/util/AbstractMap;)V

    .line 234
    .line 235
    .line 236
    iput-object v11, v12, Lvi5;->f:Lui5;

    .line 237
    .line 238
    const-string v10, "&"

    .line 239
    .line 240
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    array-length v11, v0

    .line 245
    const/4 v13, 0x0

    .line 246
    :goto_2
    const-string v14, "="

    .line 247
    .line 248
    if-ge v13, v11, :cond_5

    .line 249
    .line 250
    aget-object v15, v0, v13

    .line 251
    .line 252
    invoke-virtual {v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    array-length v15, v14

    .line 257
    const/16 p1, 0x0

    .line 258
    .line 259
    const/4 v8, 0x1

    .line 260
    if-le v15, v8, :cond_4

    .line 261
    .line 262
    aget-object v15, v14, p1

    .line 263
    .line 264
    aget-object v8, v14, v8

    .line 265
    .line 266
    invoke-virtual {v12, v15, v8}, Lq4;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_4
    aget-object v8, v14, p1

    .line 271
    .line 272
    invoke-virtual {v12, v8, v9}, Lq4;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_5
    const/16 p1, 0x0

    .line 279
    .line 280
    new-instance v0, Lsg9;

    .line 281
    .line 282
    invoke-direct {v0, v10, v7}, Lsg9;-><init>(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    new-instance v8, Lib;

    .line 286
    .line 287
    invoke-direct {v8, v6, v0, v14}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v12}, Lq4;->a()Ljava/util/Collection;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    :try_start_0
    invoke-virtual {v8, v9, v0}, Lib;->d(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    iput-object v0, v1, Lzf7;->k:Ljava/lang/String;

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-static {v0}, Le6;->e(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    iget-object v4, v4, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 323
    .line 324
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v4, "\n"

    .line 328
    .line 329
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    iget-object v8, v1, Lzf7;->j:Lokhttp3/HttpUrl;

    .line 333
    .line 334
    invoke-virtual {v8}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v8, v1, Lzf7;->k:Ljava/lang/String;

    .line 345
    .line 346
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    new-instance v8, Lsg9;

    .line 353
    .line 354
    invoke-direct {v8, v4, v7}, Lsg9;-><init>(Ljava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    new-instance v7, Lib;

    .line 358
    .line 359
    const-string v9, ":"

    .line 360
    .line 361
    invoke-direct {v7, v6, v8, v9}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    iget-object v6, v1, Lzf7;->h:Ljava/util/TreeMap;

    .line 365
    .line 366
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    new-instance v8, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    :try_start_1
    invoke-virtual {v7, v8, v6}, Lib;->d(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 380
    .line 381
    .line 382
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v6

    .line 386
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string v6, "\n\n"

    .line 390
    .line 391
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    iget-object v6, v1, Lzf7;->i:Ljava/lang/String;

    .line 395
    .line 396
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    iget-object v6, v1, Lzf7;->b:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 412
    .line 413
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    array-length v6, v0

    .line 418
    new-instance v7, Ly51$g;

    .line 419
    .line 420
    invoke-direct {v7}, Ly51$g;-><init>()V

    .line 421
    .line 422
    .line 423
    iget-object v7, v7, Ly51$g;->a:Ljava/security/MessageDigest;

    .line 424
    .line 425
    move/from16 v8, p1

    .line 426
    .line 427
    invoke-virtual {v7, v0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-static {v0}, Ly51;->b([B)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iput-object v0, v1, Lzf7;->l:Ljava/lang/String;

    .line 439
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    const-string v6, "AWS4-HMAC-SHA256\n"

    .line 443
    .line 444
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    sget-object v6, Lh38;->b:Ljava/time/format/DateTimeFormatter;

    .line 448
    .line 449
    invoke-virtual {v3, v6}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    iget-object v6, v1, Lzf7;->g:Ljava/lang/String;

    .line 460
    .line 461
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    iget-object v4, v1, Lzf7;->l:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    iput-object v0, v1, Lzf7;->m:Ljava/lang/String;

    .line 477
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    const-string v4, "AWS4"

    .line 481
    .line 482
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object v4, v1, Lzf7;->f:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 495
    .line 496
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    sget-object v6, Lh38;->d:Ljava/time/format/DateTimeFormatter;

    .line 501
    .line 502
    invoke-virtual {v3, v6}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    invoke-static {v0, v3}, Lzf7;->b([B[B)[B

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-static {v0, v3}, Lzf7;->b([B[B)[B

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    const-string v3, "s3"

    .line 523
    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-static {v0, v3}, Lzf7;->b([B[B)[B

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    const-string v3, "aws4_request"

    .line 533
    .line 534
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-static {v0, v3}, Lzf7;->b([B[B)[B

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    iput-object v0, v1, Lzf7;->n:[B

    .line 543
    .line 544
    iget-object v0, v1, Lzf7;->n:[B

    .line 545
    .line 546
    iget-object v3, v1, Lzf7;->m:Ljava/lang/String;

    .line 547
    .line 548
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 549
    .line 550
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-static {v0, v3}, Lzf7;->b([B[B)[B

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    sget-object v3, Lql0;->c:Lol0;

    .line 559
    .line 560
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    .line 562
    .line 563
    array-length v4, v0

    .line 564
    array-length v5, v0

    .line 565
    const/4 v8, 0x0

    .line 566
    invoke-static {v8, v4, v5}, Lsz8;->i(III)V

    .line 567
    .line 568
    .line 569
    new-instance v5, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    iget-object v6, v3, Lql0;->a:Lnl0;

    .line 572
    .line 573
    iget v7, v6, Lnl0;->d:I

    .line 574
    .line 575
    iget v6, v6, Lnl0;->e:I

    .line 576
    .line 577
    sget-object v8, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 578
    .line 579
    invoke-static {v4, v6}, Lho6;->l(II)I

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    mul-int/2addr v6, v7

    .line 584
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 585
    .line 586
    .line 587
    :try_start_2
    iget-object v3, v3, Lol0;->d:[C

    .line 588
    .line 589
    array-length v6, v0

    .line 590
    const/4 v8, 0x0

    .line 591
    invoke-static {v8, v4, v6}, Lsz8;->i(III)V

    .line 592
    .line 593
    .line 594
    :goto_5
    if-ge v8, v4, :cond_6

    .line 595
    .line 596
    aget-byte v6, v0, v8

    .line 597
    .line 598
    and-int/lit16 v6, v6, 0xff

    .line 599
    .line 600
    aget-char v7, v3, v6

    .line 601
    .line 602
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 603
    .line 604
    .line 605
    or-int/lit16 v6, v6, 0x100

    .line 606
    .line 607
    aget-char v6, v3, v6

    .line 608
    .line 609
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 610
    .line 611
    .line 612
    add-int/lit8 v8, v8, 0x1

    .line 613
    .line 614
    goto :goto_5

    .line 615
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 620
    .line 621
    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    iput-object v0, v1, Lzf7;->o:Ljava/lang/String;

    .line 626
    .line 627
    goto :goto_6

    .line 628
    :catch_1
    move-exception v0

    .line 629
    invoke-static {v0}, Le6;->e(Ljava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    const-string v3, "AWS4-HMAC-SHA256 Credential="

    .line 635
    .line 636
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget-object v3, v1, Lzf7;->e:Ljava/lang/String;

    .line 640
    .line 641
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    iget-object v2, v1, Lzf7;->g:Ljava/lang/String;

    .line 648
    .line 649
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const-string v2, ", SignedHeaders="

    .line 653
    .line 654
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    iget-object v2, v1, Lzf7;->i:Ljava/lang/String;

    .line 658
    .line 659
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    const-string v2, ", Signature="

    .line 663
    .line 664
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    iget-object v2, v1, Lzf7;->o:Ljava/lang/String;

    .line 668
    .line 669
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    iput-object v0, v1, Lzf7;->p:Ljava/lang/String;

    .line 677
    .line 678
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Request;->a()Lokhttp3/Request$Builder;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    iget-object v1, v1, Lzf7;->p:Ljava/lang/String;

    .line 683
    .line 684
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    iget-object v2, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 688
    .line 689
    const-string v3, "Authorization"

    .line 690
    .line 691
    invoke-static {v2, v3, v1, v0}, Lxs1;->o(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request$Builder;)Lokhttp3/Request;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    return-object v0

    .line 696
    :catch_2
    move-exception v0

    .line 697
    invoke-static {v0}, Le6;->e(Ljava/lang/Object;)V

    .line 698
    .line 699
    .line 700
    const/4 v0, 0x0

    .line 701
    return-object v0
.end method

.method public static b([B[B)[B
    .locals 3

    .line 1
    const-string v0, "HmacSHA256"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    .line 9
    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Lrg5;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method
