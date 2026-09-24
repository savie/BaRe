.class public Lv64$h;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv64$h$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lv64$d;

.field public final c:Lll0;

.field public final d:Lv64$c;

.field public final e:Lv64$e;

.field public final f:Lv64$b;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lv64$h$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lv64$h$a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lv64$h;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v0, p1, Lv64$h$a;->b:Lv64$d;

    .line 9
    .line 10
    iput-object v0, p0, Lv64$h;->b:Lv64$d;

    .line 11
    .line 12
    iget-object v0, p1, Lv64$h$a;->c:Lll0;

    .line 13
    .line 14
    iput-object v0, p0, Lv64$h;->c:Lll0;

    .line 15
    .line 16
    iget-object v1, p1, Lv64$h$a;->d:Lv64$c;

    .line 17
    .line 18
    iput-object v1, p0, Lv64$h;->d:Lv64$c;

    .line 19
    .line 20
    iget-object v1, p1, Lv64$h$a;->e:Lv64$e;

    .line 21
    .line 22
    iput-object v1, p0, Lv64$h;->e:Lv64$e;

    .line 23
    .line 24
    iget-object v1, p1, Lv64$h$a;->f:Lv64$b;

    .line 25
    .line 26
    iput-object v1, p0, Lv64$h;->f:Lv64$b;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lll0;->b()Lv64$c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p1, Lv64$h$a;->d:Lv64$c;

    .line 35
    .line 36
    filled-new-array {v1, v2}, [Lv64$c;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lv64$c;->f([Lv64$c;)Lv64$c;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lv64$h;->d:Lv64$c;

    .line 45
    .line 46
    invoke-virtual {v0}, Lll0;->c()Lv64$e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object p1, p1, Lv64$h$a;->e:Lv64$e;

    .line 51
    .line 52
    filled-new-array {v0, p1}, [Lv64$e;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Lv64$e;

    .line 57
    .line 58
    invoke-direct {v0}, Lv64$e;-><init>()V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    :goto_0
    const/4 v2, 0x2

    .line 63
    if-ge v1, v2, :cond_0

    .line 64
    .line 65
    aget-object v2, p1, v1

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lv64$e;->e(Lv64$e;)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iput-object v0, p0, Lv64$h;->e:Lv64$e;

    .line 74
    .line 75
    iget-object p1, p0, Lv64$h;->c:Lll0;

    .line 76
    .line 77
    instance-of v0, p1, Lfw0;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    check-cast p1, Lfw0;

    .line 82
    .line 83
    invoke-virtual {p1}, Lfw0;->f()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lv64$h;->g:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p0, Lv64$h;->c:Lll0;

    .line 90
    .line 91
    check-cast p1, Lfw0;

    .line 92
    .line 93
    invoke-virtual {p1}, Lfw0;->g()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lv64$h;->h:Ljava/lang/String;

    .line 98
    .line 99
    :cond_1
    iget-object p1, p0, Lv64$h;->c:Lll0;

    .line 100
    .line 101
    instance-of v0, p1, Lyq5;

    .line 102
    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    check-cast p1, Lyq5;

    .line 106
    .line 107
    invoke-virtual {p1}, Lyq5;->h()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lv64$h;->i:Ljava/lang/String;

    .line 112
    .line 113
    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Lv64$h$a;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lv64$h;-><init>(Lv64$h$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lv64$a;Ljava/lang/String;Lw32;)Lv64$f;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Content-Length"

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object v3, v0, Lv64$h;->h:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object/from16 v3, p2

    .line 13
    .line 14
    :goto_0
    if-nez v3, :cond_1

    .line 15
    .line 16
    const-string v3, "us-east-1"

    .line 17
    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    iget-object v5, v0, Lv64$h;->g:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v6, v0, Lv64$h;->i:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v5, :cond_3

    .line 27
    .line 28
    if-nez v6, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-string v0, "null bucket name for object \'"

    .line 32
    .line 33
    const-string v1, "\'"

    .line 34
    .line 35
    invoke-static {v0, v6, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v4

    .line 43
    :cond_3
    :goto_1
    iget-object v7, v1, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 44
    .line 45
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget-object v7, v0, Lv64$h;->e:Lv64$e;

    .line 50
    .line 51
    if-eqz v7, :cond_4

    .line 52
    .line 53
    invoke-virtual {v7}, Lv64$e;->c()Ljava/util/LinkedHashSet;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_4

    .line 66
    .line 67
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    check-cast v10, Ljava/util/Map$Entry;

    .line 72
    .line 73
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v11

    .line 77
    check-cast v11, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v11}, Lki8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    check-cast v10, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v10}, Lki8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {v8, v11, v10}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    iget-object v9, v0, Lv64$h;->b:Lv64$d;

    .line 98
    .line 99
    const-string v10, ""

    .line 100
    .line 101
    const-string v11, "s3-fips-us-gov-west-1.amazonaws.com"

    .line 102
    .line 103
    const-string v12, "s3-us-gov-west-1.amazonaws.com"

    .line 104
    .line 105
    const-string v13, "s3-external-1.amazonaws.com"

    .line 106
    .line 107
    move-object/from16 p2, v4

    .line 108
    .line 109
    const-string v4, "."

    .line 110
    .line 111
    if-nez v5, :cond_b

    .line 112
    .line 113
    iget-object v5, v1, Lv64$a;->c:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v5, :cond_5

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v6, v1, Lv64$a;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v6, v1, Lv64$a;->c:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-nez v6, :cond_a

    .line 142
    .line 143
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_a

    .line 148
    .line 149
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_6

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_6
    iget-object v5, v1, Lv64$a;->b:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v6, v1, Lv64$a;->c:Ljava/lang/String;

    .line 159
    .line 160
    const-string v7, "s3."

    .line 161
    .line 162
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-nez v11, :cond_7

    .line 167
    .line 168
    iget-object v1, v1, Lv64$a;->b:Ljava/lang/String;

    .line 169
    .line 170
    const-string v11, "s3-"

    .line 171
    .line 172
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    :cond_7
    const-string v1, ".cn"

    .line 179
    .line 180
    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_8

    .line 185
    .line 186
    move-object v10, v1

    .line 187
    :cond_8
    const-string v1, "amazonaws.com"

    .line 188
    .line 189
    invoke-virtual {v1, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    move-object v5, v7

    .line 194
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v8, v1}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_a
    :goto_3
    invoke-virtual {v8, v5}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    :goto_4
    invoke-virtual {v8}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move-object v4, v1

    .line 227
    move-object v1, v9

    .line 228
    goto/16 :goto_b

    .line 229
    .line 230
    :cond_b
    sget-object v15, Lv64$d;->d:Lv64$d;

    .line 231
    .line 232
    if-ne v9, v15, :cond_c

    .line 233
    .line 234
    if-nez v6, :cond_c

    .line 235
    .line 236
    if-eqz v7, :cond_e

    .line 237
    .line 238
    :cond_c
    if-eqz v7, :cond_d

    .line 239
    .line 240
    const-string v15, "location"

    .line 241
    .line 242
    iget-object v7, v7, Lv64$e;->a:Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-virtual {v7, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-nez v7, :cond_e

    .line 249
    .line 250
    :cond_d
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-eqz v7, :cond_f

    .line 255
    .line 256
    iget-object v7, v1, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 257
    .line 258
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->f()Z

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    if-eqz v7, :cond_f

    .line 263
    .line 264
    :cond_e
    const/4 v7, 0x1

    .line 265
    goto :goto_5

    .line 266
    :cond_f
    const/4 v7, 0x0

    .line 267
    :goto_5
    iget-object v15, v1, Lv64$a;->a:Lokhttp3/HttpUrl;

    .line 268
    .line 269
    iget-object v15, v15, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 270
    .line 271
    iget-object v14, v1, Lv64$a;->c:Ljava/lang/String;

    .line 272
    .line 273
    if-eqz v14, :cond_16

    .line 274
    .line 275
    new-instance v14, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    iget-object v15, v1, Lv64$a;->b:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget-object v15, v1, Lv64$a;->c:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v13

    .line 298
    if-nez v13, :cond_15

    .line 299
    .line 300
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v12

    .line 304
    if-nez v12, :cond_15

    .line 305
    .line 306
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    if-eqz v11, :cond_10

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :cond_10
    iget-object v11, v1, Lv64$a;->b:Ljava/lang/String;

    .line 314
    .line 315
    const-string v12, "s3-accelerate"

    .line 316
    .line 317
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v13

    .line 321
    if-eqz v13, :cond_12

    .line 322
    .line 323
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 324
    .line 325
    .line 326
    move-result v13

    .line 327
    if-nez v13, :cond_11

    .line 328
    .line 329
    if-eqz v7, :cond_12

    .line 330
    .line 331
    const-string v13, "-accelerate"

    .line 332
    .line 333
    invoke-virtual {v11, v13, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v11

    .line 337
    goto :goto_6

    .line 338
    :cond_11
    const-string v0, "bucket name \'"

    .line 339
    .line 340
    const-string v1, "\' with \'.\' is not allowed for accelerate endpoint"

    .line 341
    .line 342
    invoke-static {v0, v5, v1}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    return-object p2

    .line 350
    :cond_12
    :goto_6
    iget-boolean v10, v1, Lv64$a;->d:Z

    .line 351
    .line 352
    if-eqz v10, :cond_13

    .line 353
    .line 354
    const-string v10, "dualstack."

    .line 355
    .line 356
    invoke-static {v11, v10}, Leq3;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    :cond_13
    iget-object v10, v1, Lv64$a;->b:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 363
    .line 364
    .line 365
    move-result v10

    .line 366
    if-nez v10, :cond_14

    .line 367
    .line 368
    invoke-static {v11, v3, v4}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v11

    .line 372
    :cond_14
    invoke-static {v11}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    iget-object v11, v1, Lv64$a;->c:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    invoke-virtual {v8, v10}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    move-object v15, v10

    .line 389
    goto :goto_8

    .line 390
    :cond_15
    :goto_7
    invoke-virtual {v8, v14}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    move-object v15, v14

    .line 394
    :cond_16
    :goto_8
    if-nez v7, :cond_18

    .line 395
    .line 396
    iget-boolean v1, v1, Lv64$a;->f:Z

    .line 397
    .line 398
    if-nez v1, :cond_17

    .line 399
    .line 400
    goto :goto_9

    .line 401
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v8, v1}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    move-object v1, v9

    .line 423
    goto :goto_a

    .line 424
    :cond_18
    :goto_9
    invoke-static {v5}, Lki8;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 429
    .line 430
    .line 431
    move-result v11

    .line 432
    const/4 v12, 0x0

    .line 433
    const/4 v13, 0x1

    .line 434
    const/4 v10, 0x0

    .line 435
    move-object/from16 v16, v9

    .line 436
    .line 437
    move-object v9, v1

    .line 438
    move-object/from16 v1, v16

    .line 439
    .line 440
    invoke-virtual/range {v8 .. v13}, Lokhttp3/HttpUrl$Builder;->j(Ljava/lang/String;IIZZ)V

    .line 441
    .line 442
    .line 443
    :goto_a
    if-eqz v6, :cond_19

    .line 444
    .line 445
    invoke-static {v6}, Lki8;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-virtual {v8, v4}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    :cond_19
    invoke-virtual {v8}, Lokhttp3/HttpUrl$Builder;->e()Lokhttp3/HttpUrl;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    :goto_b
    iget-object v5, v0, Lv64$h;->d:Lv64$c;

    .line 457
    .line 458
    const-string v6, "Content-Type"

    .line 459
    .line 460
    iget-object v7, v0, Lv64$h;->f:Lv64$b;

    .line 461
    .line 462
    if-nez v7, :cond_1b

    .line 463
    .line 464
    iget-object v7, v5, Lv64$c;->a:Ljava/util/HashMap;

    .line 465
    .line 466
    invoke-static {v6}, Lv64$c;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v8

    .line 470
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    if-eqz v7, :cond_1a

    .line 475
    .line 476
    new-instance v8, Lv64$b;

    .line 477
    .line 478
    sget-object v9, Lki8;->h:[B

    .line 479
    .line 480
    invoke-virtual {v5, v6}, Lv64$c;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    sget-object v10, Lokhttp3/MediaType;->d:Lai6;

    .line 485
    .line 486
    invoke-static {v7}, Lokhttp3/MediaType$Companion;->b(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 487
    .line 488
    .line 489
    move-result-object v11

    .line 490
    const-string v12, "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

    .line 491
    .line 492
    const-string v13, "1B2M2Y8AsgTpgAmY7PhCfg=="

    .line 493
    .line 494
    const/4 v10, 0x0

    .line 495
    invoke-direct/range {v8 .. v13}, Lv64$b;-><init>([BILokhttp3/MediaType;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    move-object v7, v8

    .line 499
    goto :goto_c

    .line 500
    :cond_1a
    sget-object v7, Lv64;->d:Lv64$b;

    .line 501
    .line 502
    :cond_1b
    :goto_c
    iget-object v8, v7, Lv64$b;->a:Lokhttp3/RequestBody;

    .line 503
    .line 504
    iget-object v9, v7, Lv64$b;->a:Lokhttp3/RequestBody;

    .line 505
    .line 506
    if-eqz v8, :cond_1c

    .line 507
    .line 508
    goto :goto_d

    .line 509
    :cond_1c
    if-nez p3, :cond_1e

    .line 510
    .line 511
    iget-object v8, v7, Lv64$b;->h:Ljava/lang/String;

    .line 512
    .line 513
    if-eqz v8, :cond_1d

    .line 514
    .line 515
    goto :goto_d

    .line 516
    :cond_1d
    const-string v0, "MD5 hash must be provided to request body"

    .line 517
    .line 518
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    return-object p2

    .line 522
    :cond_1e
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->f()Z

    .line 523
    .line 524
    .line 525
    move-result v8

    .line 526
    iget-object v10, v7, Lv64$b;->g:Ljava/lang/String;

    .line 527
    .line 528
    if-nez v8, :cond_20

    .line 529
    .line 530
    if-eqz v10, :cond_1f

    .line 531
    .line 532
    goto :goto_d

    .line 533
    :cond_1f
    const-string v0, "SHA256 hash must be provided to request body"

    .line 534
    .line 535
    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    return-object p2

    .line 539
    :cond_20
    if-nez v10, :cond_21

    .line 540
    .line 541
    const-string v8, "UNSIGNED-PAYLOAD"

    .line 542
    .line 543
    goto :goto_e

    .line 544
    :cond_21
    :goto_d
    move-object/from16 v8, p2

    .line 545
    .line 546
    :goto_e
    iget-object v10, v7, Lv64$b;->c:Lox0;

    .line 547
    .line 548
    iget-object v11, v7, Lv64$b;->b:Ljava/io/RandomAccessFile;

    .line 549
    .line 550
    if-eqz v9, :cond_22

    .line 551
    .line 552
    new-instance v10, Lv64$g;

    .line 553
    .line 554
    invoke-direct {v10, v9}, Lv64$g;-><init>(Lokhttp3/RequestBody;)V

    .line 555
    .line 556
    .line 557
    goto :goto_f

    .line 558
    :cond_22
    if-eqz v11, :cond_23

    .line 559
    .line 560
    new-instance v10, Lv64$g;

    .line 561
    .line 562
    iget-object v12, v7, Lv64$b;->e:Ljava/lang/Long;

    .line 563
    .line 564
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 565
    .line 566
    .line 567
    move-result-wide v12

    .line 568
    iget-object v14, v7, Lv64$b;->f:Lokhttp3/MediaType;

    .line 569
    .line 570
    invoke-direct {v10, v11, v12, v13, v14}, Lv64$g;-><init>(Ljava/io/RandomAccessFile;JLokhttp3/MediaType;)V

    .line 571
    .line 572
    .line 573
    goto :goto_f

    .line 574
    :cond_23
    if-eqz v10, :cond_24

    .line 575
    .line 576
    new-instance v11, Lv64$g;

    .line 577
    .line 578
    iget-object v12, v7, Lv64$b;->f:Lokhttp3/MediaType;

    .line 579
    .line 580
    invoke-direct {v11, v10, v12}, Lv64$g;-><init>(Lox0;Lokhttp3/MediaType;)V

    .line 581
    .line 582
    .line 583
    move-object v10, v11

    .line 584
    goto :goto_f

    .line 585
    :cond_24
    new-instance v10, Lv64$g;

    .line 586
    .line 587
    iget-object v11, v7, Lv64$b;->d:[B

    .line 588
    .line 589
    iget-object v12, v7, Lv64$b;->e:Ljava/lang/Long;

    .line 590
    .line 591
    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    .line 592
    .line 593
    .line 594
    move-result v12

    .line 595
    iget-object v13, v7, Lv64$b;->f:Lokhttp3/MediaType;

    .line 596
    .line 597
    invoke-direct {v10, v11, v12, v13}, Lv64$g;-><init>([BILokhttp3/MediaType;)V

    .line 598
    .line 599
    .line 600
    :goto_f
    new-instance v11, Lv64$c;

    .line 601
    .line 602
    iget-object v12, v7, Lv64$b;->f:Lokhttp3/MediaType;

    .line 603
    .line 604
    iget-object v12, v12, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 605
    .line 606
    filled-new-array {v6, v12}, [Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v12

    .line 610
    invoke-direct {v11, v12}, Lv64$c;-><init>([Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    iget-object v12, v7, Lv64$b;->g:Ljava/lang/String;

    .line 614
    .line 615
    const-string v13, "X-Amz-Content-Sha256"

    .line 616
    .line 617
    if-eqz v12, :cond_25

    .line 618
    .line 619
    invoke-virtual {v11, v13, v12}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    :cond_25
    iget-object v12, v7, Lv64$b;->h:Ljava/lang/String;

    .line 623
    .line 624
    if-eqz v12, :cond_26

    .line 625
    .line 626
    const-string v14, "Content-Md5"

    .line 627
    .line 628
    invoke-virtual {v11, v14, v12}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    :cond_26
    filled-new-array {v5, v11}, [Lv64$c;

    .line 632
    .line 633
    .line 634
    move-result-object v5

    .line 635
    invoke-static {v5}, Lv64$c;->f([Lv64$c;)Lv64$c;

    .line 636
    .line 637
    .line 638
    move-result-object v5

    .line 639
    iget-object v11, v5, Lv64$c;->a:Ljava/util/HashMap;

    .line 640
    .line 641
    if-eqz v8, :cond_27

    .line 642
    .line 643
    invoke-virtual {v5, v13, v8}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    :cond_27
    if-eqz p3, :cond_29

    .line 647
    .line 648
    invoke-virtual/range {p3 .. p3}, Lw32;->e()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v12

    .line 652
    if-eqz v12, :cond_28

    .line 653
    .line 654
    const-string v13, "X-Amz-Security-Token"

    .line 655
    .line 656
    invoke-virtual {v5, v13, v12}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    :cond_28
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    .line 660
    .line 661
    .line 662
    move-result-object v12

    .line 663
    sget-object v13, Lh38;->b:Ljava/time/format/DateTimeFormatter;

    .line 664
    .line 665
    invoke-virtual {v12, v13}, Ljava/time/ZonedDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v12

    .line 669
    const-string v13, "X-Amz-Date"

    .line 670
    .line 671
    invoke-virtual {v5, v13, v12}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    :cond_29
    const-string v12, "Accept-Encoding"

    .line 675
    .line 676
    const-string v13, "identity"

    .line 677
    .line 678
    invoke-virtual {v5, v12, v13}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    const-string v12, "User-Agent"

    .line 682
    .line 683
    iget-object v0, v0, Lv64$h;->a:Ljava/lang/String;

    .line 684
    .line 685
    invoke-virtual {v5, v12, v0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    iget-object v0, v4, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 689
    .line 690
    iget-object v12, v4, Lokhttp3/HttpUrl;->a:Ljava/lang/String;

    .line 691
    .line 692
    iget v13, v4, Lokhttp3/HttpUrl;->e:I

    .line 693
    .line 694
    sget-object v14, Lki8$a;->b:Lki8$a;

    .line 695
    .line 696
    invoke-virtual {v14, v0}, Lki8$a;->b(Ljava/lang/String;)Z

    .line 697
    .line 698
    .line 699
    move-result v14

    .line 700
    if-eqz v14, :cond_2a

    .line 701
    .line 702
    const-string v14, "["

    .line 703
    .line 704
    const-string v15, "]"

    .line 705
    .line 706
    invoke-static {v14, v0, v15}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    :cond_2a
    const-string v14, "http"

    .line 711
    .line 712
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v14

    .line 716
    if-eqz v14, :cond_2b

    .line 717
    .line 718
    const/16 v14, 0x50

    .line 719
    .line 720
    if-eq v13, v14, :cond_2d

    .line 721
    .line 722
    :cond_2b
    const-string v14, "https"

    .line 723
    .line 724
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v12

    .line 728
    if-eqz v12, :cond_2c

    .line 729
    .line 730
    const/16 v12, 0x1bb

    .line 731
    .line 732
    if-ne v13, v12, :cond_2c

    .line 733
    .line 734
    goto :goto_10

    .line 735
    :cond_2c
    new-instance v12, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    const-string v0, ":"

    .line 744
    .line 745
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    :cond_2d
    :goto_10
    const-string v12, "Host"

    .line 756
    .line 757
    invoke-virtual {v5, v12, v0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    sget-object v0, Lv64$d;->d:Lv64$d;

    .line 761
    .line 762
    if-eq v1, v0, :cond_2f

    .line 763
    .line 764
    sget-object v0, Lv64$d;->c:Lv64$d;

    .line 765
    .line 766
    if-ne v1, v0, :cond_2e

    .line 767
    .line 768
    goto :goto_11

    .line 769
    :cond_2e
    invoke-static {v6}, Lv64$c;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-virtual {v11, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    check-cast v0, Ljava/util/Set;

    .line 778
    .line 779
    goto :goto_12

    .line 780
    :cond_2f
    :goto_11
    iget-object v0, v7, Lv64$b;->f:Lokhttp3/MediaType;

    .line 781
    .line 782
    iget-object v0, v0, Lokhttp3/MediaType;->a:Ljava/lang/String;

    .line 783
    .line 784
    invoke-virtual {v5, v6, v0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    :try_start_0
    iget-wide v12, v10, Lv64$g;->g:J

    .line 788
    .line 789
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v5, v2, v0}, Lv64$c;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .line 795
    .line 796
    :goto_12
    new-instance v0, Lokhttp3/Request$Builder;

    .line 797
    .line 798
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 799
    .line 800
    .line 801
    iput-object v4, v0, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    .line 802
    .line 803
    new-instance v2, Lokhttp3/Headers$Builder;

    .line 804
    .line 805
    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 806
    .line 807
    .line 808
    const-string v4, "Content-Encoding"

    .line 809
    .line 810
    invoke-static {v4}, Lv64$c;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v6

    .line 814
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v6

    .line 818
    if-eqz v6, :cond_30

    .line 819
    .line 820
    invoke-virtual {v5, v4}, Lv64$c;->d(Ljava/lang/String;)Ljava/util/Set;

    .line 821
    .line 822
    .line 823
    move-result-object v6

    .line 824
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 825
    .line 826
    .line 827
    move-result-object v6

    .line 828
    invoke-interface {v6}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    .line 829
    .line 830
    .line 831
    move-result-object v6

    .line 832
    new-instance v11, Lw64;

    .line 833
    .line 834
    const/4 v12, 0x0

    .line 835
    invoke-direct {v11, v12}, Lw64;-><init>(I)V

    .line 836
    .line 837
    .line 838
    invoke-interface {v6, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 839
    .line 840
    .line 841
    move-result-object v6

    .line 842
    const-string v11, ","

    .line 843
    .line 844
    invoke-static {v11}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 845
    .line 846
    .line 847
    move-result-object v11

    .line 848
    invoke-interface {v6, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    move-result-object v6

    .line 852
    check-cast v6, Ljava/lang/String;

    .line 853
    .line 854
    invoke-virtual {v2, v4, v6}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    :cond_30
    invoke-virtual {v5}, Lv64$c;->c()Ljava/util/LinkedHashSet;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    :cond_31
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 866
    .line 867
    .line 868
    move-result v6

    .line 869
    if-eqz v6, :cond_32

    .line 870
    .line 871
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v6

    .line 875
    check-cast v6, Ljava/util/Map$Entry;

    .line 876
    .line 877
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v11

    .line 881
    check-cast v11, Ljava/lang/String;

    .line 882
    .line 883
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v11

    .line 887
    if-nez v11, :cond_31

    .line 888
    .line 889
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v11

    .line 893
    check-cast v11, Ljava/lang/String;

    .line 894
    .line 895
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v6

    .line 899
    check-cast v6, Ljava/lang/String;

    .line 900
    .line 901
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    invoke-static {v11}, Lokhttp3/internal/_HeadersCommonKt;->b(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    invoke-static {v2, v11, v6}, Lokhttp3/internal/_HeadersCommonKt;->a(Lokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    goto :goto_13

    .line 914
    :cond_32
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->b()Lokhttp3/Headers;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    invoke-virtual {v2}, Lokhttp3/Headers;->f()Lokhttp3/Headers$Builder;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    iput-object v2, v0, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    .line 923
    .line 924
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    sget-object v4, Lv64$d;->d:Lv64$d;

    .line 929
    .line 930
    if-eq v1, v4, :cond_34

    .line 931
    .line 932
    sget-object v5, Lv64$d;->c:Lv64$d;

    .line 933
    .line 934
    if-ne v1, v5, :cond_33

    .line 935
    .line 936
    goto :goto_14

    .line 937
    :cond_33
    move-object/from16 v10, p2

    .line 938
    .line 939
    :cond_34
    :goto_14
    invoke-virtual {v0, v2, v10}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 940
    .line 941
    .line 942
    new-instance v2, Lokhttp3/Request;

    .line 943
    .line 944
    invoke-direct {v2, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 945
    .line 946
    .line 947
    if-eqz v9, :cond_35

    .line 948
    .line 949
    goto :goto_16

    .line 950
    :cond_35
    if-eqz p3, :cond_37

    .line 951
    .line 952
    invoke-virtual/range {p3 .. p3}, Lw32;->a()Ljava/lang/String;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    invoke-virtual/range {p3 .. p3}, Lw32;->d()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v5

    .line 960
    if-eqz v8, :cond_36

    .line 961
    .line 962
    goto :goto_15

    .line 963
    :cond_36
    iget-object v8, v7, Lv64$b;->g:Ljava/lang/String;

    .line 964
    .line 965
    :goto_15
    invoke-static {v2, v3, v0, v5, v8}, Lzf7;->a(Lokhttp3/Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    :cond_37
    :goto_16
    iget-object v0, v2, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 970
    .line 971
    const-string v3, "---------START-HTTP---------\n"

    .line 972
    .line 973
    invoke-static {v3}, Ldj7;->s(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v5

    .line 981
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    if-eqz v0, :cond_38

    .line 986
    .line 987
    const-string v6, "?"

    .line 988
    .line 989
    invoke-static {v5, v6, v0}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v5

    .line 993
    :cond_38
    iget-object v0, v2, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 994
    .line 995
    const-string v6, " "

    .line 996
    .line 997
    const-string v8, " HTTP/1.1\n"

    .line 998
    .line 999
    invoke-static {v3, v0, v6, v5, v8}, Lxs1;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    iget-object v0, v2, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 1003
    .line 1004
    invoke-virtual {v0}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    const-string v5, "Signature=([0-9a-f]+)"

    .line 1009
    .line 1010
    const-string v6, "Signature=*REDACTED*"

    .line 1011
    .line 1012
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    const-string v5, "Credential=([^/]+)"

    .line 1017
    .line 1018
    const-string v6, "Credential=*REDACTED*"

    .line 1019
    .line 1020
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 1028
    .line 1029
    .line 1030
    move-result v0

    .line 1031
    add-int/lit8 v0, v0, -0x2

    .line 1032
    .line 1033
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    const/4 v5, 0x1

    .line 1038
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 1039
    .line 1040
    .line 1041
    move-result v5

    .line 1042
    const/16 v6, 0xa

    .line 1043
    .line 1044
    const-string v8, "\n"

    .line 1045
    .line 1046
    if-eq v5, v6, :cond_39

    .line 1047
    .line 1048
    const-string v0, "\n\n"

    .line 1049
    .line 1050
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    goto :goto_17

    .line 1054
    :cond_39
    const/4 v12, 0x0

    .line 1055
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 1056
    .line 1057
    .line 1058
    move-result v0

    .line 1059
    if-eq v0, v6, :cond_3a

    .line 1060
    .line 1061
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    :cond_3a
    :goto_17
    invoke-virtual {v7}, Lv64$b;->toString()Ljava/lang/String;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    if-eq v1, v4, :cond_3b

    .line 1069
    .line 1070
    sget-object v4, Lv64$d;->c:Lv64$d;

    .line 1071
    .line 1072
    if-ne v1, v4, :cond_3c

    .line 1073
    .line 1074
    :cond_3b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v0

    .line 1081
    if-nez v0, :cond_3c

    .line 1082
    .line 1083
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    :cond_3c
    new-instance v0, Lv64$f;

    .line 1087
    .line 1088
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    invoke-direct {v0, v2, v1}, Lv64$f;-><init>(Lokhttp3/Request;Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    return-object v0

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    new-instance v1, Lrg5;

    .line 1098
    .line 1099
    invoke-direct {v1, v0}, Lrg5;-><init>(Ljava/lang/Throwable;)V

    .line 1100
    .line 1101
    .line 1102
    throw v1
.end method
