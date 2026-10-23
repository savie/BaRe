.class public final Ldc9;
.super Lkb9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/NavigableMap;


# static fields
.field public static final f:Ldc9;


# instance fields
.field public final transient c:Lod9;

.field public final transient d:Lib9;

.field public final transient e:Ldc9;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ldc9;

    .line 2
    .line 3
    sget-object v1, Lad9;->a:Lad9;

    .line 4
    .line 5
    invoke-static {v1}, Lgc9;->H(Ljava/util/Comparator;)Lod9;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lib9;->f:Lra9;

    .line 10
    .line 11
    sget-object v2, Lid9;->p:Lid9;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v0, v1, v2, v3}, Ldc9;-><init>(Lod9;Lib9;Ldc9;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Ldc9;->f:Ldc9;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lod9;Lib9;Ldc9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldc9;->c:Lod9;

    .line 5
    .line 6
    iput-object p2, p0, Ldc9;->d:Lib9;

    .line 7
    .line 8
    iput-object p3, p0, Ldc9;->e:Ldc9;

    .line 9
    .line 10
    return-void
.end method

.method public static b(Ljava/util/TreeMap;)Ldc9;
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    sget-object v3, Lad9;->a:Lad9;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-eq v3, v0, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_3

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object p0, v4

    .line 49
    :cond_3
    sget-object v4, Lkb9;->b:[Ljava/util/Map$Entry;

    .line 50
    .line 51
    invoke-interface {p0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, [Ljava/util/Map$Entry;

    .line 56
    .line 57
    array-length v4, p0

    .line 58
    if-eqz v4, :cond_c

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    if-eq v4, v1, :cond_7

    .line 62
    .line 63
    new-array v6, v4, [Ljava/lang/Object;

    .line 64
    .line 65
    new-array v7, v4, [Ljava/lang/Object;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    :goto_2
    if-ge v2, v4, :cond_6

    .line 70
    .line 71
    aget-object v0, p0, v2

    .line 72
    .line 73
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v1, v0}, Lz85;->J(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    aput-object v1, v6, v2

    .line 88
    .line 89
    aput-object v0, v7, v2

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    new-instance v0, Lnx;

    .line 95
    .line 96
    const/16 v8, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v8}, Lnx;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v2, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 102
    .line 103
    .line 104
    aget-object v0, p0, v2

    .line 105
    .line 106
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    aput-object v8, v6, v2

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    aput-object v0, v7, v2

    .line 120
    .line 121
    aget-object v2, v6, v2

    .line 122
    .line 123
    invoke-static {v2, v0}, Lz85;->J(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    if-ge v1, v4, :cond_6

    .line 127
    .line 128
    add-int/lit8 v0, v1, -0x1

    .line 129
    .line 130
    aget-object v0, p0, v0

    .line 131
    .line 132
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    aget-object v2, p0, v1

    .line 136
    .line 137
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-static {v9, v10}, Lz85;->J(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    aput-object v9, v6, v1

    .line 152
    .line 153
    aput-object v10, v7, v1

    .line 154
    .line 155
    invoke-virtual {v3, v8, v9}, Lad9;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_5

    .line 160
    .line 161
    add-int/lit8 v1, v1, 0x1

    .line 162
    .line 163
    move-object v8, v9

    .line 164
    goto :goto_3

    .line 165
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v1, "Multiple entries with same key: "

    .line 174
    .line 175
    const-string v2, " and "

    .line 176
    .line 177
    invoke-static {v1, p0, v2, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-object v5

    .line 185
    :cond_6
    new-instance p0, Ldc9;

    .line 186
    .line 187
    new-instance v0, Lod9;

    .line 188
    .line 189
    invoke-static {v4, v6}, Lib9;->B(I[Ljava/lang/Object;)Lid9;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-direct {v0, v1, v3}, Lod9;-><init>(Lib9;Ljava/util/Comparator;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v4, v7}, Lib9;->B(I[Ljava/lang/Object;)Lid9;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-direct {p0, v0, v1, v5}, Ldc9;-><init>(Lod9;Lib9;Ldc9;)V

    .line 201
    .line 202
    .line 203
    return-object p0

    .line 204
    :cond_7
    aget-object p0, p0, v2

    .line 205
    .line 206
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    new-instance v4, Ldc9;

    .line 218
    .line 219
    new-instance v6, Lod9;

    .line 220
    .line 221
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    move v7, v2

    .line 226
    :goto_4
    const-string v8, "at index "

    .line 227
    .line 228
    if-ge v7, v1, :cond_9

    .line 229
    .line 230
    aget-object v9, v0, v7

    .line 231
    .line 232
    if-eqz v9, :cond_8

    .line 233
    .line 234
    add-int/lit8 v7, v7, 0x1

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_8
    invoke-static {v7, v8}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-object v5

    .line 245
    :cond_9
    invoke-static {v1, v0}, Lib9;->B(I[Ljava/lang/Object;)Lid9;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-direct {v6, v0, v3}, Lod9;-><init>(Lib9;Ljava/util/Comparator;)V

    .line 250
    .line 251
    .line 252
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    :goto_5
    if-ge v2, v1, :cond_b

    .line 257
    .line 258
    aget-object v0, p0, v2

    .line 259
    .line 260
    if-eqz v0, :cond_a

    .line 261
    .line 262
    add-int/lit8 v2, v2, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_a
    invoke-static {v2, v8}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-object v5

    .line 273
    :cond_b
    invoke-static {v1, p0}, Lib9;->B(I[Ljava/lang/Object;)Lid9;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-direct {v4, v6, p0, v5}, Ldc9;-><init>(Lod9;Lib9;Ldc9;)V

    .line 278
    .line 279
    .line 280
    return-object v4

    .line 281
    :cond_c
    invoke-static {v3}, Ldc9;->d(Ljava/util/Comparator;)Ldc9;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    return-object p0
.end method

.method public static d(Ljava/util/Comparator;)Ldc9;
    .locals 3

    .line 1
    sget-object v0, Lad9;->a:Lad9;

    .line 2
    .line 3
    if-eq v0, p0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ldc9;

    .line 6
    .line 7
    invoke-static {p0}, Lgc9;->H(Ljava/util/Comparator;)Lod9;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v1, Lib9;->f:Lra9;

    .line 12
    .line 13
    sget-object v1, Lid9;->p:Lid9;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v0, p0, v1, v2}, Ldc9;-><init>(Lod9;Lib9;Ldc9;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    sget-object p0, Ldc9;->f:Ldc9;

    .line 21
    .line 22
    return-object p0
.end method


# virtual methods
.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Ldc9;->g(Ljava/lang/Object;Z)Ldc9;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ldc9;->firstEntry()Ljava/util/Map$Entry;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldc9;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc9;->c:Lod9;

    .line 2
    .line 3
    iget-object p0, p0, Lgc9;->n:Ljava/util/Comparator;

    .line 4
    .line 5
    return-object p0
.end method

.method public final synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc9;->c:Lod9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgc9;->E()Lgc9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 3

    .line 1
    iget-object v0, p0, Ldc9;->e:Ldc9;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lkb9;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Ldc9;->c:Lod9;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object p0, v1, Lgc9;->n:Ljava/util/Comparator;

    .line 14
    .line 15
    instance-of v0, p0, Lgd9;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    check-cast p0, Lgd9;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lla9;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lla9;-><init>(Ljava/util/Comparator;)V

    .line 25
    .line 26
    .line 27
    move-object p0, v0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lgd9;->a()Lgd9;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Ldc9;->d(Ljava/util/Comparator;)Ldc9;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_1
    new-instance v0, Ldc9;

    .line 38
    .line 39
    invoke-virtual {v1}, Lgc9;->E()Lgc9;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lod9;

    .line 44
    .line 45
    iget-object v2, p0, Ldc9;->d:Lib9;

    .line 46
    .line 47
    invoke-virtual {v2}, Lib9;->x()Lib9;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v0, v1, v2, p0}, Ldc9;-><init>(Lod9;Lib9;Ldc9;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-object v0
.end method

.method public final e(Ljava/lang/Object;Z)Ldc9;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldc9;->c:Lod9;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lod9;->I(Ljava/lang/Object;Z)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p2, p1}, Ldc9;->h(II)Ldc9;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final f(Ljava/lang/Object;ZLjava/lang/Object;Z)Ldc9;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ldc9;->c:Lod9;

    .line 8
    .line 9
    iget-object v0, v0, Lgc9;->n:Ljava/util/Comparator;

    .line 10
    .line 11
    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p3, p4}, Ldc9;->e(Ljava/lang/Object;Z)Ldc9;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1, p2}, Ldc9;->g(Ljava/lang/Object;Z)Ldc9;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "expected fromKey <= toKey but %s > %s"

    .line 31
    .line 32
    invoke-static {p1, p0}, Lxx3;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return-object p0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkb9;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lkb9;->a()Lpb9;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lpb9;->B()Lib9;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Ljava/util/Map$Entry;

    .line 23
    .line 24
    return-object p0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc9;->c:Lod9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lod9;->first()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Ldc9;->e(Ljava/lang/Object;Z)Ldc9;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ldc9;->lastEntry()Ljava/util/Map$Entry;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldc9;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final g(Ljava/lang/Object;Z)Ldc9;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldc9;->c:Lod9;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lod9;->K(Ljava/lang/Object;Z)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Ldc9;->d:Lib9;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {p0, p1, p2}, Ldc9;->h(II)Ldc9;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ldc9;->c:Lod9;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :catch_0
    :goto_0
    move p1, v1

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    iget-object v2, v0, Lod9;->q:Lib9;

    .line 9
    .line 10
    iget-object v0, v0, Lgc9;->n:Ljava/util/Comparator;

    .line 11
    .line 12
    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-gez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_2
    iget-object p0, p0, Ldc9;->d:Lib9;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final h(II)Ldc9;
    .locals 2

    .line 1
    iget-object v0, p0, Ldc9;->d:Lib9;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object p0

    .line 14
    :cond_1
    :goto_0
    iget-object p0, p0, Ldc9;->c:Lod9;

    .line 15
    .line 16
    if-ne p1, p2, :cond_2

    .line 17
    .line 18
    iget-object p0, p0, Lgc9;->n:Ljava/util/Comparator;

    .line 19
    .line 20
    invoke-static {p0}, Ldc9;->d(Ljava/util/Comparator;)Ldc9;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_2
    new-instance v1, Ldc9;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lod9;->L(II)Lod9;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p1, p2}, Lib9;->y(II)Lib9;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-direct {v1, p0, p1, p2}, Ldc9;-><init>(Lod9;Lib9;Ldc9;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Ldc9;->e(Ljava/lang/Object;Z)Ldc9;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ldc9;->e(Ljava/lang/Object;Z)Ldc9;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ldc9;->g(Ljava/lang/Object;Z)Ldc9;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ldc9;->firstEntry()Ljava/util/Map$Entry;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldc9;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc9;->c:Lod9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkb9;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lkb9;->a()Lpb9;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lpb9;->B()Lib9;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object p0, p0, Ldc9;->d:Lib9;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    add-int/lit8 p0, p0, -0x1

    .line 24
    .line 25
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/util/Map$Entry;

    .line 30
    .line 31
    return-object p0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc9;->c:Lod9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lod9;->last()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ldc9;->e(Ljava/lang/Object;Z)Ldc9;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ldc9;->lastEntry()Ljava/util/Map$Entry;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldc9;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc9;->c:Lod9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Ldc9;->d:Lib9;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Ldc9;->f(Ljava/lang/Object;ZLjava/lang/Object;Z)Ldc9;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, p2, v1}, Ldc9;->f(Ljava/lang/Object;ZLjava/lang/Object;Z)Ldc9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Ldc9;->g(Ljava/lang/Object;Z)Ldc9;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Ldc9;->g(Ljava/lang/Object;Z)Ldc9;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Ldc9;->d:Lib9;

    .line 2
    .line 3
    return-object p0
.end method
