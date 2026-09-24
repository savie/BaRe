.class public final Lvl6;
.super Lfa3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Ley5;


# instance fields
.field public final b:Ljava/lang/ClassLoader;

.field public final c:Lfa3;

.field public final d:Lgv7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ley5;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    invoke-static {v0}, Lma2;->r(Ljava/lang/String;)Ley5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lvl6;->e:Ley5;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    sget-object v0, Lfa3;->a:Lpn4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lvl6;->b:Ljava/lang/ClassLoader;

    .line 10
    .line 11
    iput-object v0, p0, Lvl6;->c:Lfa3;

    .line 12
    .line 13
    new-instance p1, Lxq4;

    .line 14
    .line 15
    const/16 v0, 0xa

    .line 16
    .line 17
    invoke-direct {p1, p0, v0}, Lxq4;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lgv7;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lgv7;-><init>(Lbt3;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lvl6;->d:Lgv7;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ley5;)Lon4;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-static {v0}, Lus2;->s(Ley5;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "file not found: "

    .line 9
    .line 10
    if-eqz v1, :cond_b

    .line 11
    .line 12
    sget-object v1, Lvl6;->e:Ley5;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-static {v1, v0, v4}, Lc;->b(Ley5;Ley5;Z)Ley5;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, v4, Ley5;->a:Lhy0;

    .line 23
    .line 24
    iget-object v6, v1, Ley5;->a:Lhy0;

    .line 25
    .line 26
    invoke-static {v4}, Lc;->a(Ley5;)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, -0x1

    .line 32
    if-ne v7, v9, :cond_0

    .line 33
    .line 34
    move-object v10, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v10, Ley5;

    .line 37
    .line 38
    invoke-virtual {v5, v8, v7}, Lhy0;->r(II)Lhy0;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-direct {v10, v7}, Ley5;-><init>(Lhy0;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {v1}, Lc;->a(Ley5;)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-ne v7, v9, :cond_1

    .line 50
    .line 51
    move-object v11, v2

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v11, Ley5;

    .line 54
    .line 55
    invoke-virtual {v6, v8, v7}, Lhy0;->r(II)Lhy0;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-direct {v11, v7}, Ley5;-><init>(Lhy0;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-static {v10, v11}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const-string v10, " and "

    .line 67
    .line 68
    if-eqz v7, :cond_a

    .line 69
    .line 70
    invoke-virtual {v4}, Ley5;->a()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v1}, Ley5;->a()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    move v13, v8

    .line 91
    :goto_2
    if-ge v13, v12, :cond_2

    .line 92
    .line 93
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    invoke-static {v14, v15}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-eqz v14, :cond_2

    .line 106
    .line 107
    add-int/lit8 v13, v13, 0x1

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    if-ne v13, v12, :cond_3

    .line 111
    .line 112
    invoke-virtual {v5}, Lhy0;->d()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-virtual {v6}, Lhy0;->d()I

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-ne v5, v12, :cond_3

    .line 121
    .line 122
    const-string v1, "."

    .line 123
    .line 124
    invoke-static {v1}, Lma2;->r(Ljava/lang/String;)Ley5;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    goto :goto_5

    .line 129
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    invoke-virtual {v11, v13, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    sget-object v12, Lc;->e:Lhy0;

    .line 138
    .line 139
    invoke-interface {v5, v12}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-ne v5, v9, :cond_9

    .line 144
    .line 145
    sget-object v5, Lc;->d:Lhy0;

    .line 146
    .line 147
    invoke-static {v6, v5}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-eqz v5, :cond_4

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_4
    new-instance v5, Lnw0;

    .line 155
    .line 156
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-static {v1}, Lc;->c(Ley5;)Lhy0;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-nez v1, :cond_5

    .line 164
    .line 165
    invoke-static {v4}, Lc;->c(Ley5;)Lhy0;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-nez v1, :cond_5

    .line 170
    .line 171
    sget-object v1, Ley5;->b:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v1}, Lc;->f(Ljava/lang/String;)Lhy0;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    move v6, v13

    .line 182
    :goto_3
    if-ge v6, v4, :cond_6

    .line 183
    .line 184
    sget-object v9, Lc;->e:Lhy0;

    .line 185
    .line 186
    invoke-virtual {v5, v9}, Lnw0;->D(Lhy0;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v1}, Lnw0;->D(Lhy0;)V

    .line 190
    .line 191
    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    :goto_4
    if-ge v13, v4, :cond_7

    .line 200
    .line 201
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Lhy0;

    .line 206
    .line 207
    invoke-virtual {v5, v6}, Lnw0;->D(Lhy0;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v1}, Lnw0;->D(Lhy0;)V

    .line 211
    .line 212
    .line 213
    add-int/lit8 v13, v13, 0x1

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_7
    invoke-static {v5, v8}, Lc;->d(Lnw0;Z)Ley5;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    :goto_5
    iget-object v1, v4, Ley5;->a:Lhy0;

    .line 221
    .line 222
    invoke-virtual {v1}, Lhy0;->w()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move-object/from16 v4, p0

    .line 227
    .line 228
    iget-object v4, v4, Lvl6;->d:Lgv7;

    .line 229
    .line 230
    invoke-virtual {v4}, Lgv7;->getValue()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Ljava/util/List;

    .line 235
    .line 236
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    :catch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-eqz v5, :cond_8

    .line 245
    .line 246
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Lpw5;

    .line 251
    .line 252
    iget-object v6, v5, Lpw5;->a:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v6, Lfa3;

    .line 255
    .line 256
    iget-object v5, v5, Lpw5;->b:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v5, Ley5;

    .line 259
    .line 260
    :try_start_0
    invoke-virtual {v5, v1}, Ley5;->b(Ljava/lang/String;)Ley5;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-virtual {v6, v5}, Lfa3;->a(Ley5;)Lon4;

    .line 265
    .line 266
    .line 267
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-object v0

    .line 269
    :cond_8
    invoke-static {v0, v3}, Lm0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-object v2

    .line 273
    :cond_9
    const-string v0, "Impossible relative path to resolve: "

    .line 274
    .line 275
    invoke-static {v0, v4, v10, v1}, Lq;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    return-object v2

    .line 279
    :cond_a
    const-string v0, "Paths of different roots cannot be relative to each other: "

    .line 280
    .line 281
    invoke-static {v0, v4, v10, v1}, Lq;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    return-object v2

    .line 285
    :cond_b
    invoke-static {v0, v3}, Lm0;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-object v2
.end method
