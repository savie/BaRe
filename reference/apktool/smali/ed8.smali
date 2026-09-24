.class public abstract Led8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final QUERY_PARAM_SEPARATORS:La6;

.field private static final QUERY_VALUE_SEPARATORS:Lf88;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private encodedAuthority:Ljava/lang/String;

.field private final encodedFragment:Ljava/lang/String;

.field private encodedPath:Ljava/lang/String;

.field private encodedQuery:Ljava/lang/String;

.field private encodedSchemeSpecificPart:Ljava/lang/String;

.field private final encodedUserInfo:Ljava/lang/String;

.field private final fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private pathRootless:Z

.field private pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private queryParams:Ljava/util/ArrayList;

.field private scheme:Ljava/lang/String;

.field private final userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La6;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, La6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Led8;->QUERY_PARAM_SEPARATORS:La6;

    .line 9
    .line 10
    new-instance v0, Lf88;

    .line 11
    .line 12
    const/16 v1, 0x26

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lf88;-><init>(C)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Led8;->QUERY_VALUE_SEPARATORS:Lf88;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 337
    iput v0, p0, Led8;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 9

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Led8;->scheme:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Led8;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Led8;->encodedAuthority:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v3, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object v4, Lac4;->a:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const/16 v5, 0x5b

    .line 46
    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    sub-int/2addr v4, v2

    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/16 v5, 0x5d

    .line 59
    .line 60
    if-ne v4, v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    sub-int/2addr v4, v2

    .line 67
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-static {v4}, Lac4;->b(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    invoke-static {v2, v2, v1}, Lxs1;->g(IILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :cond_1
    :goto_0
    iput-object v1, p0, Led8;->host:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iput v1, p0, Led8;->port:I

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p0, Led8;->encodedUserInfo:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput-object v1, p0, Led8;->userInfo:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v1, p0, Led8;->encodedAuthority:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    iget-object v4, p0, Led8;->host:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v4, :cond_2

    .line 108
    .line 109
    :try_start_0
    invoke-static {v1}, Lcd8;->b(Ljava/lang/CharSequence;)Lcd8;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v4, v1, Lcd8;->b:Le64;

    .line 114
    .line 115
    iget-object v1, v1, Lcd8;->a:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v1, p0, Led8;->encodedUserInfo:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v1}, Lxy5;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, p0, Led8;->userInfo:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v1, v4, Le64;->a:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v1}, Lxy5;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iput-object v1, p0, Led8;->host:Ljava/lang/String;

    .line 132
    .line 133
    iget v1, v4, Le64;->c:I

    .line 134
    .line 135
    iput v1, p0, Led8;->port:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    :catch_0
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iput-object v1, p0, Led8;->encodedPath:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-nez v1, :cond_3

    .line 148
    .line 149
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    invoke-static {v1}, Led8;->splitPath(Ljava/lang/String;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_4

    .line 174
    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    check-cast v5, Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v5}, Lxy5;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    move-object v1, v4

    .line 190
    :goto_2
    iput-object v1, p0, Led8;->pathSegments:Ljava/util/List;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    if-eqz v1, :cond_5

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const-string v4, "/"

    .line 203
    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_6

    .line 209
    .line 210
    :cond_5
    move v3, v2

    .line 211
    :cond_6
    iput-boolean v3, p0, Led8;->pathRootless:Z

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    iput-object v1, p0, Led8;->encodedQuery:Ljava/lang/String;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const/4 v3, 0x0

    .line 224
    if-nez v1, :cond_7

    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_7
    new-instance v4, Ldx5;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    invoke-direct {v4, v5}, Lsc6;-><init>(I)V

    .line 234
    .line 235
    .line 236
    new-instance v5, Ljava/util/ArrayList;

    .line 237
    .line 238
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .line 240
    .line 241
    :cond_8
    :goto_3
    invoke-virtual {v4}, Lsc6;->a()Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-nez v6, :cond_b

    .line 246
    .line 247
    sget-object v6, Led8;->QUERY_PARAM_SEPARATORS:La6;

    .line 248
    .line 249
    invoke-static {v1, v4, v6}, Lzv1;->p(Ljava/lang/String;Ldx5;Lg88;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {v4}, Lsc6;->a()Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-nez v7, :cond_9

    .line 258
    .line 259
    iget v7, v4, Lsc6;->c:I

    .line 260
    .line 261
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    iget v8, v4, Lsc6;->c:I

    .line 266
    .line 267
    add-int/2addr v8, v2

    .line 268
    invoke-virtual {v4, v8}, Lsc6;->b(I)V

    .line 269
    .line 270
    .line 271
    const/16 v8, 0x3d

    .line 272
    .line 273
    if-ne v7, v8, :cond_9

    .line 274
    .line 275
    sget-object v7, Led8;->QUERY_VALUE_SEPARATORS:Lf88;

    .line 276
    .line 277
    invoke-static {v1, v4, v7}, Lzv1;->p(Ljava/lang/String;Ldx5;Lg88;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-virtual {v4}, Lsc6;->a()Z

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    if-nez v8, :cond_a

    .line 286
    .line 287
    iget v8, v4, Lsc6;->c:I

    .line 288
    .line 289
    add-int/2addr v8, v2

    .line 290
    invoke-virtual {v4, v8}, Lsc6;->b(I)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_9
    move-object v7, v3

    .line 295
    :cond_a
    :goto_4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-nez v8, :cond_8

    .line 300
    .line 301
    new-instance v8, Lcp0;

    .line 302
    .line 303
    invoke-static {v6}, Lxy5;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-static {v7}, Lxy5;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    invoke-direct {v8, v6, v7}, Lcp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_b
    move-object v3, v5

    .line 319
    :goto_5
    iput-object v3, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iput-object v1, p0, Led8;->encodedFragment:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    iput-object p1, p0, Led8;->fragment:Ljava/lang/String;

    .line 332
    .line 333
    iput-object v0, p0, Led8;->charset:Ljava/nio/charset/Charset;

    .line 334
    .line 335
    return-void
.end method

.method public static splitPath(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ldx5;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-direct {v0, v1}, Lsc6;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lsc6;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-instance p0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_1
    iget v1, v0, Lsc6;->c:I

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/16 v3, 0x2f

    .line 35
    .line 36
    if-ne v1, v3, :cond_2

    .line 37
    .line 38
    iget v1, v0, Lsc6;->c:I

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lsc6;->b(I)V

    .line 43
    .line 44
    .line 45
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0}, Lsc6;->a()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    iget v5, v0, Lsc6;->c:I

    .line 70
    .line 71
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-ne v5, v3, :cond_4

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_1
    iget v5, v0, Lsc6;->c:I

    .line 92
    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    invoke-virtual {v0, v5}, Lsc6;->b(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcp0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Led8;->encodedQuery:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p1, p0, Led8;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Led8;->scheme:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v2, 0x3a

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Led8;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Led8;->charset:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto/16 :goto_b

    .line 28
    .line 29
    :cond_1
    iget-object v1, p0, Led8;->encodedAuthority:Ljava/lang/String;

    .line 30
    .line 31
    const-string v4, "//"

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Led8;->encodedAuthority:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    move v1, v5

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_3
    iget-object v1, p0, Led8;->host:Ljava/lang/String;

    .line 49
    .line 50
    if-eqz v1, :cond_9

    .line 51
    .line 52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "@"

    .line 56
    .line 57
    iget-object v4, p0, Led8;->encodedUserInfo:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    iget-object v4, p0, Led8;->userInfo:Ljava/lang/String;

    .line 69
    .line 70
    if-eqz v4, :cond_6

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    const/4 v8, -0x1

    .line 77
    if-eq v7, v8, :cond_5

    .line 78
    .line 79
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    sget-object v9, Lxy5;->b:Ljava/util/BitSet;

    .line 84
    .line 85
    invoke-static {v0, v8, v3, v9}, Lxy5;->b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    add-int/2addr v7, v5

    .line 92
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v0, v2, v3, v9}, Lxy5;->b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    sget-object v2, Lxy5;->b:Ljava/util/BitSet;

    .line 101
    .line 102
    invoke-static {v0, v4, v3, v2}, Lxy5;->b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_2
    iget-object v1, p0, Led8;->host:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v1}, Lac4;->b(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    const-string v1, "["

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Led8;->host:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, "]"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    iget-object v1, p0, Led8;->host:Ljava/lang/String;

    .line 133
    .line 134
    sget-object v2, Lxy5;->a:Ljava/util/BitSet;

    .line 135
    .line 136
    if-nez v1, :cond_8

    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    goto :goto_3

    .line 140
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    sget-object v4, Lxy5;->b:Ljava/util/BitSet;

    .line 146
    .line 147
    invoke-static {v2, v1, v3, v4}, Lxy5;->b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    :goto_4
    iget v1, p0, Led8;->port:I

    .line 158
    .line 159
    if-ltz v1, :cond_2

    .line 160
    .line 161
    const-string v2, ":"

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_9
    move v1, v6

    .line 171
    :goto_5
    iget-object v2, p0, Led8;->encodedPath:Ljava/lang/String;

    .line 172
    .line 173
    const/16 v4, 0x2f

    .line 174
    .line 175
    if-eqz v2, :cond_c

    .line 176
    .line 177
    if-eqz v1, :cond_b

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-nez v1, :cond_a

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_a
    iget-object v1, p0, Led8;->encodedPath:Ljava/lang/String;

    .line 187
    .line 188
    const-string v2, "/"

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_b

    .line 195
    .line 196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :cond_b
    :goto_6
    iget-object v1, p0, Led8;->encodedPath:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    goto :goto_9

    .line 205
    :cond_c
    iget-object v2, p0, Led8;->pathSegments:Ljava/util/List;

    .line 206
    .line 207
    if-eqz v2, :cond_10

    .line 208
    .line 209
    if-nez v1, :cond_d

    .line 210
    .line 211
    iget-boolean v1, p0, Led8;->pathRootless:Z

    .line 212
    .line 213
    if-eqz v1, :cond_d

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_d
    move v5, v6

    .line 217
    :goto_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    move v2, v6

    .line 222
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-eqz v7, :cond_10

    .line 227
    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    check-cast v7, Ljava/lang/String;

    .line 233
    .line 234
    if-gtz v2, :cond_e

    .line 235
    .line 236
    if-nez v5, :cond_f

    .line 237
    .line 238
    :cond_e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    :cond_f
    sget-object v8, Lxy5;->b:Ljava/util/BitSet;

    .line 242
    .line 243
    invoke-static {v0, v7, v3, v8}, Lxy5;->b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V

    .line 244
    .line 245
    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_10
    :goto_9
    iget-object v1, p0, Led8;->encodedQuery:Ljava/lang/String;

    .line 250
    .line 251
    const-string v2, "?"

    .line 252
    .line 253
    if-eqz v1, :cond_11

    .line 254
    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget-object v1, p0, Led8;->encodedQuery:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    goto :goto_b

    .line 264
    :cond_11
    iget-object v1, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 265
    .line 266
    if-eqz v1, :cond_14

    .line 267
    .line 268
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_14

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-object v1, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_14

    .line 288
    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Lcp0;

    .line 294
    .line 295
    if-lez v6, :cond_12

    .line 296
    .line 297
    const/16 v4, 0x26

    .line 298
    .line 299
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    :cond_12
    iget-object v4, v2, Lcp0;->a:Ljava/lang/String;

    .line 303
    .line 304
    iget-object v2, v2, Lcp0;->b:Ljava/lang/String;

    .line 305
    .line 306
    sget-object v5, Lxy5;->b:Ljava/util/BitSet;

    .line 307
    .line 308
    invoke-static {v0, v4, v3, v5}, Lxy5;->b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V

    .line 309
    .line 310
    .line 311
    if-eqz v2, :cond_13

    .line 312
    .line 313
    const/16 v4, 0x3d

    .line 314
    .line 315
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-static {v0, v2, v3, v5}, Lxy5;->b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V

    .line 319
    .line 320
    .line 321
    :cond_13
    add-int/lit8 v6, v6, 0x1

    .line 322
    .line 323
    goto :goto_a

    .line 324
    :cond_14
    :goto_b
    iget-object v1, p0, Led8;->encodedFragment:Ljava/lang/String;

    .line 325
    .line 326
    const-string v2, "#"

    .line 327
    .line 328
    if-eqz v1, :cond_15

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    goto :goto_c

    .line 337
    :cond_15
    iget-object p0, p0, Led8;->fragment:Ljava/lang/String;

    .line 338
    .line 339
    if-eqz p0, :cond_16

    .line 340
    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    sget-object v1, Lxy5;->b:Ljava/util/BitSet;

    .line 345
    .line 346
    invoke-static {v0, p0, v3, v1}, Lxy5;->b(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Ljava/util/BitSet;)V

    .line 347
    .line 348
    .line 349
    :cond_16
    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    return-object p0
.end method

.method public final build()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfd8;->c:Lfd8;

    .line 2
    .line 3
    iget-object v1, p0, Led8;->scheme:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lfd8;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lfd8;->b:Lfd8;

    .line 14
    .line 15
    iget-object v1, p0, Led8;->scheme:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, v0, Lfd8;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Led8;->host:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Ljm1;->A(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    :cond_1
    new-instance v0, Ljava/net/URI;

    .line 34
    .line 35
    invoke-virtual {p0}, Led8;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_2
    new-instance v0, Ljava/net/URISyntaxException;

    .line 44
    .line 45
    iget-object p0, p0, Led8;->scheme:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "http/https URI cannot have an empty host identifier"

    .line 48
    .line 49
    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v1, Ldd8;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Ldd8;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, Lcp0;

    .line 33
    .line 34
    invoke-direct {v1, p1, p2}, Lcp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Led8;->encodedQuery:Ljava/lang/String;

    .line 42
    .line 43
    iput-object p1, p0, Led8;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method

.method public final getHost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Led8;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPathSegments()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Led8;->pathSegments:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p0, p0, Led8;->pathSegments:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final getPort()I
    .locals 0

    .line 1
    iget p0, p0, Led8;->port:I

    .line 2
    .line 3
    return p0
.end method

.method public final getQueryParams()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object p0, p0, Led8;->queryParams:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Led8;->scheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isPathEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led8;->pathSegments:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Led8;->encodedPath:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Led8;->host:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Led8;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Led8;->encodedAuthority:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Led8;->splitPath(Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Led8;->setPathSegments(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string v0, "/"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    iput-boolean p1, p0, Led8;->pathRootless:Z

    .line 26
    .line 27
    return-void
.end method

.method public final setPathSegments(Ljava/util/List;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    iput-object v1, p0, Led8;->pathSegments:Ljava/util/List;

    .line 18
    .line 19
    iput-object v0, p0, Led8;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Led8;->encodedPath:Ljava/lang/String;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Led8;->pathRootless:Z

    .line 25
    .line 26
    return-void
.end method

.method public final setScheme()V
    .locals 2

    .line 1
    const-string v0, "https"

    .line 2
    .line 3
    invoke-static {v0}, Ljm1;->A(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iput-object v0, p0, Led8;->scheme:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Led8;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
