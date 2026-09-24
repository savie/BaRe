.class public final Lfo8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnx1;
.implements Lfy0;
.implements Lkw5;
.implements Lqa7;
.implements Lzm7;
.implements Lcs9;
.implements Let9;
.implements Laa9;
.implements Les9;


# static fields
.field public static final b:Lfo8;

.field public static c:Lfo8;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfo8;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lfo8;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lfo8;->b:Lfo8;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lfo8;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Lfo8;Ljava/util/List;)Z
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v2, v1

    .line 21
    check-cast v2, Lyn8;

    .line 22
    .line 23
    iget-object v3, v2, Lyn8;->a:Lq63;

    .line 24
    .line 25
    invoke-virtual {v3}, Lq63;->j()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-object v3, v2, Lyn8;->a:Lq63;

    .line 32
    .line 33
    invoke-virtual {v3}, Lq63;->A()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    iget-wide v5, v2, Lyn8;->c:J

    .line 38
    .line 39
    cmp-long v2, v3, v5

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/16 p1, 0xa

    .line 49
    .line 50
    invoke-static {v0, p1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-static {p1}, Lx65;->q0(I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/16 v1, 0x10

    .line 59
    .line 60
    if-ge p1, v1, :cond_2

    .line 61
    .line 62
    move p1, v1

    .line 63
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    move-object v2, v0

    .line 83
    check-cast v2, Lyn8;

    .line 84
    .line 85
    iget-object v2, v2, Lyn8;->e:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-wide/16 v2, 0x0

    .line 108
    .line 109
    move-wide v4, v2

    .line 110
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lyn8;

    .line 121
    .line 122
    iget-wide v7, v0, Lyn8;->c:J

    .line 123
    .line 124
    add-long/2addr v4, v7

    .line 125
    goto :goto_2

    .line 126
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    cmp-long v0, v4, v2

    .line 131
    .line 132
    const/4 v2, 0x0

    .line 133
    if-lez v0, :cond_5

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    move-object p1, v2

    .line 137
    :goto_3
    if-eqz p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v3

    .line 143
    :goto_4
    move-wide v9, v3

    .line 144
    goto :goto_5

    .line 145
    :cond_6
    const-wide/16 v3, 0x1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :goto_5
    new-instance v8, Lkh6;

    .line 149
    .line 150
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 151
    .line 152
    .line 153
    new-instance p1, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_7

    .line 175
    .line 176
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Ljava/util/Map$Entry;

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    move-object v7, v3

    .line 187
    check-cast v7, Ljava/lang/String;

    .line 188
    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    move-object v5, v1

    .line 194
    check-cast v5, Lyn8;

    .line 195
    .line 196
    sget-object v1, Lzn4;->a:Lzn4;

    .line 197
    .line 198
    new-instance v3, Leo8;

    .line 199
    .line 200
    move-object v4, p0

    .line 201
    invoke-direct/range {v3 .. v10}, Leo8;-><init>(Lfo8;Lyn8;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lkh6;J)V

    .line 202
    .line 203
    .line 204
    new-instance p0, Lvn4;

    .line 205
    .line 206
    invoke-direct {p0, v3}, Lvn4;-><init>(Lbt3;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-object p0, v4

    .line 213
    goto :goto_6

    .line 214
    :cond_7
    sget-object p0, Lzn4;->a:Lzn4;

    .line 215
    .line 216
    :try_start_0
    sget-object p0, Ld45;->b:Ld45;

    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    invoke-static {}, Ld45;->a()Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    if-eqz p0, :cond_8

    .line 226
    .line 227
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/anonymous/MFirebaseUser;->isAnonymous()Z

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    goto :goto_7

    .line 236
    :catch_0
    :cond_8
    move-object p0, v2

    .line 237
    :goto_7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 238
    .line 239
    invoke-static {p0, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    const/4 v0, 0x0

    .line 244
    const/4 v1, 0x1

    .line 245
    if-nez p0, :cond_a

    .line 246
    .line 247
    const-string p0, "parallel_cloud_transfers"

    .line 248
    .line 249
    :try_start_1
    sget-object v3, Lcz4;->f:Landroid/content/SharedPreferences;

    .line 250
    .line 251
    if-eqz v3, :cond_9

    .line 252
    .line 253
    invoke-interface {v3, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    goto :goto_8

    .line 258
    :cond_9
    const-string p0, "prefs"

    .line 259
    .line 260
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :catch_1
    move p0, v0

    .line 265
    :goto_8
    if-eqz p0, :cond_a

    .line 266
    .line 267
    move p0, v1

    .line 268
    goto :goto_9

    .line 269
    :cond_a
    move p0, v0

    .line 270
    :goto_9
    const/4 v2, 0x4

    .line 271
    invoke-static {v2, p1, p0}, Lzn4;->a(ILjava/util/ArrayList;Z)Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    if-eqz p0, :cond_c

    .line 276
    .line 277
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_c

    .line 282
    .line 283
    :cond_b
    move v0, v1

    .line 284
    goto :goto_a

    .line 285
    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-eqz p1, :cond_b

    .line 294
    .line 295
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    check-cast p1, Ljava/lang/Boolean;

    .line 300
    .line 301
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    if-nez p1, :cond_d

    .line 306
    .line 307
    :goto_a
    return v0
.end method

.method public static e(Ljava/lang/String;)Lxq6;
    .locals 3

    .line 1
    sget-object v0, Lxq6;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Lxq6;

    .line 19
    .line 20
    iget-object v2, v2, Lxq6;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    check-cast v1, Lxq6;

    .line 31
    .line 32
    return-object v1
.end method

.method public static h(Ljava/lang/String;)Lxq6;
    .locals 6

    .line 1
    sget-object v0, Lxq6;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_6

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v3, v1

    .line 19
    check-cast v3, Lxq6;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-lez v5, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object v4, v2

    .line 44
    :goto_1
    if-nez v4, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const-string v2, "https://"

    .line 48
    .line 49
    invoke-static {v4, v2}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v4, "http://"

    .line 54
    .line 55
    invoke-static {v2, v4}, Lnq7;->q0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v4, "/"

    .line 60
    .line 61
    invoke-static {v2, v4, v2}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v4, ":"

    .line 66
    .line 67
    invoke-static {v2, v4, v2}, Lnq7;->C0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 72
    .line 73
    invoke-static {v4, v2, v4}, Ldj7;->q(Ljava/util/Locale;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 78
    .line 79
    iget-object v3, v3, Lxq6;->i:Ljava/util/List;

    .line 80
    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_0

    .line 99
    .line 100
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Lai6;

    .line 105
    .line 106
    invoke-virtual {v4, v2}, Lai6;->b(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_5

    .line 111
    .line 112
    move-object v2, v1

    .line 113
    :cond_6
    check-cast v2, Lxq6;

    .line 114
    .line 115
    if-nez v2, :cond_7

    .line 116
    .line 117
    sget-object p0, Lxq6;->j:Lxq6;

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_7
    return-object v2
.end method


# virtual methods
.method public a([BII)[B
    .locals 1

    .line 1
    new-array p0, p3, [B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public c(J)Z
    .locals 3

    .line 1
    iget p0, p0, Lfo8;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-wide v0, 0x8000002dL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long p0, p1, v0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long p0, p1, v1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    move p0, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p0, p1

    .line 26
    :goto_0
    if-eqz p0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, p1

    .line 30
    :cond_2
    :goto_1
    return v0

    .line 31
    :pswitch_0
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    cmp-long p0, p1, v0

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    const-wide v0, 0x80000006L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    cmp-long p0, p1, v0

    .line 43
    .line 44
    if-eqz p0, :cond_4

    .line 45
    .line 46
    const-wide v0, 0xc000000fL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmp-long p0, p1, v0

    .line 52
    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 p0, 0x0

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 59
    :goto_3
    return p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lix0;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-class v2, Lba9;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "Unknown key class: "

    .line 12
    .line 13
    const-string v4, "EC"

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-virtual {v0}, Lix0;->q()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lix0;->w()Llb9;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Lhi9;

    .line 25
    .line 26
    invoke-virtual {v0}, Llb9;->a()Lvm4;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v5, v0, Lnq9;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    check-cast v0, Lnq9;

    .line 35
    .line 36
    iget-object v3, v0, Lnq9;->d:Lcq9;

    .line 37
    .line 38
    sget-object v5, Ln1a;->a:Lot9;

    .line 39
    .line 40
    iget-object v6, v3, Lcq9;->a:Lyp9;

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lp1a;

    .line 47
    .line 48
    iget-object v6, v0, Lnq9;->e:Ljava/security/spec/ECPoint;

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual {v6}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v5}, Lzm5;->M(Lp1a;)Ljava/security/spec/ECParameterSpec;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    new-instance v8, Ljava/math/BigInteger;

    .line 71
    .line 72
    const/4 v9, 0x1

    .line 73
    invoke-direct {v8, v9, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 74
    .line 75
    .line 76
    new-instance v7, Ljava/math/BigInteger;

    .line 77
    .line 78
    invoke-direct {v7, v9, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 79
    .line 80
    .line 81
    new-instance v6, Ljava/security/spec/ECPoint;

    .line 82
    .line 83
    invoke-direct {v6, v8, v7}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-static {v6, v7}, Lyr9;->g(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 91
    .line 92
    .line 93
    new-instance v7, Ljava/security/spec/ECPublicKeySpec;

    .line 94
    .line 95
    invoke-direct {v7, v6, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 96
    .line 97
    .line 98
    sget-object v5, Ls1a;->f:Ls1a;

    .line 99
    .line 100
    iget-object v5, v5, Ls1a;->a:Lt1a;

    .line 101
    .line 102
    invoke-interface {v5, v4}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Ljava/security/KeyFactory;

    .line 107
    .line 108
    invoke-virtual {v4, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    .line 113
    .line 114
    iget-object v5, v3, Lcq9;->f:Ld2a;

    .line 115
    .line 116
    if-eqz v5, :cond_0

    .line 117
    .line 118
    invoke-virtual {v5}, Ld2a;->b()[B

    .line 119
    .line 120
    .line 121
    :cond_0
    new-instance v5, Ln1a;

    .line 122
    .line 123
    iget-object v5, v3, Lcq9;->b:Lxp9;

    .line 124
    .line 125
    invoke-static {v5}, Ln1a;->a(Lxp9;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    sget-object v5, Ln1a;->b:Lot9;

    .line 129
    .line 130
    iget-object v6, v3, Lcq9;->c:Laq9;

    .line 131
    .line 132
    invoke-virtual {v5, v6}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    check-cast v5, Lr1a;

    .line 137
    .line 138
    invoke-static {v3}, Lx13;->W(Lcq9;)Lfr9;

    .line 139
    .line 140
    .line 141
    iget-object v0, v0, Lnq9;->k:Ld2a;

    .line 142
    .line 143
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 144
    .line 145
    .line 146
    invoke-interface {v4}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-interface {v4}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {v0, v3}, Lyr9;->g(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_1
    instance-of v4, v0, Lvq9;

    .line 163
    .line 164
    if-eqz v4, :cond_2

    .line 165
    .line 166
    check-cast v0, Lvq9;

    .line 167
    .line 168
    iget-object v3, v0, Lvq9;->d:Llq9;

    .line 169
    .line 170
    iget-object v4, v0, Lvq9;->e:Ld2a;

    .line 171
    .line 172
    iget-object v5, v3, Llq9;->a:Ljq9;

    .line 173
    .line 174
    invoke-static {v5}, Ll73;->K(Ljq9;)Lmr9;

    .line 175
    .line 176
    .line 177
    iget-object v5, v3, Llq9;->b:Lhq9;

    .line 178
    .line 179
    invoke-static {v5}, Ll73;->I(Lhq9;)Lia9;

    .line 180
    .line 181
    .line 182
    iget-object v3, v3, Llq9;->c:Lgq9;

    .line 183
    .line 184
    invoke-static {v3}, Ll73;->J(Lgq9;)Lhr9;

    .line 185
    .line 186
    .line 187
    iget-object v0, v0, Lvq9;->f:Ld2a;

    .line 188
    .line 189
    invoke-virtual {v4}, Ld2a;->b()[B

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 193
    .line 194
    .line 195
    :goto_0
    const/4 v0, 0x6

    .line 196
    invoke-direct {v2, v0}, Lhi9;-><init>(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    return-object v0

    .line 204
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v1

    .line 222
    :cond_3
    const-class v2, Lca9;

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_14

    .line 229
    .line 230
    new-instance v2, Ljava/util/HashMap;

    .line 231
    .line 232
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 233
    .line 234
    .line 235
    const/4 v6, 0x0

    .line 236
    move v7, v6

    .line 237
    :goto_1
    iget-object v8, v0, Lix0;->b:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v8, Ljava/util/List;

    .line 240
    .line 241
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-ge v7, v8, :cond_13

    .line 246
    .line 247
    invoke-virtual {v0, v7}, Lix0;->p(I)Llb9;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    iget-object v9, v8, Llb9;->c:Lia9;

    .line 252
    .line 253
    sget-object v10, Lia9;->c:Lia9;

    .line 254
    .line 255
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    if-eqz v9, :cond_12

    .line 260
    .line 261
    invoke-virtual {v8}, Llb9;->a()Lvm4;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    instance-of v10, v9, Lfq9;

    .line 266
    .line 267
    if-eqz v10, :cond_5

    .line 268
    .line 269
    check-cast v9, Lfq9;

    .line 270
    .line 271
    iget-object v10, v9, Lfq9;->d:Lnq9;

    .line 272
    .line 273
    iget-object v10, v10, Lnq9;->d:Lcq9;

    .line 274
    .line 275
    sget-object v11, Ln1a;->a:Lot9;

    .line 276
    .line 277
    iget-object v12, v10, Lcq9;->a:Lyp9;

    .line 278
    .line 279
    invoke-virtual {v11, v12}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    check-cast v11, Lp1a;

    .line 284
    .line 285
    iget-object v12, v9, Lfq9;->e:Lvk9;

    .line 286
    .line 287
    iget-object v12, v12, Lvk9;->b:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v12, Ljava/math/BigInteger;

    .line 290
    .line 291
    invoke-static {v12}, Lwx3;->J(Ljava/math/BigInteger;)[B

    .line 292
    .line 293
    .line 294
    move-result-object v12

    .line 295
    invoke-static {v11}, Lzm5;->M(Lp1a;)Ljava/security/spec/ECParameterSpec;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    invoke-static {v12}, Lwx3;->G([B)Ljava/math/BigInteger;

    .line 300
    .line 301
    .line 302
    move-result-object v12

    .line 303
    new-instance v13, Ljava/security/spec/ECPrivateKeySpec;

    .line 304
    .line 305
    invoke-direct {v13, v12, v11}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 306
    .line 307
    .line 308
    sget-object v11, Ls1a;->f:Ls1a;

    .line 309
    .line 310
    iget-object v11, v11, Ls1a;->a:Lt1a;

    .line 311
    .line 312
    invoke-interface {v11, v4}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    check-cast v11, Ljava/security/KeyFactory;

    .line 317
    .line 318
    invoke-virtual {v11, v13}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    move-object v13, v11

    .line 323
    check-cast v13, Ljava/security/interfaces/ECPrivateKey;

    .line 324
    .line 325
    new-array v11, v6, [B

    .line 326
    .line 327
    iget-object v12, v10, Lcq9;->f:Ld2a;

    .line 328
    .line 329
    if-eqz v12, :cond_4

    .line 330
    .line 331
    invoke-virtual {v12}, Ld2a;->b()[B

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    :cond_4
    move-object v14, v11

    .line 336
    new-instance v12, Lo1a;

    .line 337
    .line 338
    iget-object v11, v10, Lcq9;->b:Lxp9;

    .line 339
    .line 340
    invoke-static {v11}, Ln1a;->a(Lxp9;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v15

    .line 344
    sget-object v11, Ln1a;->b:Lot9;

    .line 345
    .line 346
    const/16 p0, 0x0

    .line 347
    .line 348
    iget-object v5, v10, Lcq9;->c:Laq9;

    .line 349
    .line 350
    invoke-virtual {v11, v5}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    move-object/from16 v16, v5

    .line 355
    .line 356
    check-cast v16, Lr1a;

    .line 357
    .line 358
    invoke-static {v10}, Lx13;->W(Lcq9;)Lfr9;

    .line 359
    .line 360
    .line 361
    move-result-object v17

    .line 362
    invoke-virtual {v9}, Lfq9;->J()Lvm4;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    check-cast v5, Ldr9;

    .line 367
    .line 368
    invoke-virtual {v5}, Ldr9;->J()Ld2a;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    invoke-virtual {v5}, Ld2a;->b()[B

    .line 373
    .line 374
    .line 375
    move-result-object v18

    .line 376
    invoke-direct/range {v12 .. v18}, Lo1a;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lr1a;Lfr9;[B)V

    .line 377
    .line 378
    .line 379
    move-object/from16 v19, v4

    .line 380
    .line 381
    goto/16 :goto_5

    .line 382
    .line 383
    :cond_5
    const/16 p0, 0x0

    .line 384
    .line 385
    instance-of v5, v9, Loq9;

    .line 386
    .line 387
    if-eqz v5, :cond_11

    .line 388
    .line 389
    check-cast v9, Loq9;

    .line 390
    .line 391
    iget-object v5, v9, Loq9;->d:Lvq9;

    .line 392
    .line 393
    iget-object v10, v5, Lvq9;->d:Llq9;

    .line 394
    .line 395
    iget-object v11, v10, Llq9;->a:Ljq9;

    .line 396
    .line 397
    invoke-static {v11}, Ll73;->K(Ljq9;)Lmr9;

    .line 398
    .line 399
    .line 400
    move-result-object v14

    .line 401
    iget-object v12, v10, Llq9;->b:Lhq9;

    .line 402
    .line 403
    invoke-static {v12}, Ll73;->I(Lhq9;)Lia9;

    .line 404
    .line 405
    .line 406
    move-result-object v15

    .line 407
    iget-object v10, v10, Llq9;->c:Lgq9;

    .line 408
    .line 409
    invoke-static {v10}, Ll73;->J(Lgq9;)Lhr9;

    .line 410
    .line 411
    .line 412
    move-result-object v16

    .line 413
    sget-object v10, Ljq9;->g:Ljq9;

    .line 414
    .line 415
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v12

    .line 419
    const-string v13, "Unrecognized HPKE KEM identifier"

    .line 420
    .line 421
    sget-object v6, Ljq9;->f:Ljq9;

    .line 422
    .line 423
    sget-object v0, Ljq9;->e:Ljq9;

    .line 424
    .line 425
    move-object/from16 v19, v4

    .line 426
    .line 427
    sget-object v4, Ljq9;->d:Ljq9;

    .line 428
    .line 429
    if-eqz v12, :cond_6

    .line 430
    .line 431
    const/16 v12, 0x20

    .line 432
    .line 433
    :goto_2
    move/from16 v17, v12

    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_6
    if-eq v11, v4, :cond_9

    .line 437
    .line 438
    if-eq v11, v0, :cond_8

    .line 439
    .line 440
    if-ne v11, v6, :cond_7

    .line 441
    .line 442
    const/16 v12, 0x85

    .line 443
    .line 444
    goto :goto_2

    .line 445
    :cond_7
    invoke-static {v13}, Lm0;->h(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    return-object p0

    .line 449
    :cond_8
    const/16 v12, 0x61

    .line 450
    .line 451
    goto :goto_2

    .line 452
    :cond_9
    const/16 v12, 0x41

    .line 453
    .line 454
    goto :goto_2

    .line 455
    :goto_3
    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v10

    .line 459
    if-nez v10, :cond_b

    .line 460
    .line 461
    if-eq v11, v4, :cond_b

    .line 462
    .line 463
    if-eq v11, v0, :cond_b

    .line 464
    .line 465
    if-ne v11, v6, :cond_a

    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_a
    invoke-static {v13}, Lm0;->h(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    return-object p0

    .line 472
    :cond_b
    :goto_4
    iget-object v0, v9, Loq9;->e:Lkm8;

    .line 473
    .line 474
    iget-object v0, v0, Lkm8;->a:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v0, Ld2a;

    .line 477
    .line 478
    invoke-virtual {v0}, Ld2a;->b()[B

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-static {v0}, Ld2a;->a([B)Ld2a;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    new-instance v13, Lla;

    .line 487
    .line 488
    iget-object v4, v5, Lvq9;->e:Ld2a;

    .line 489
    .line 490
    invoke-direct {v13, v0, v4}, Lla;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    new-instance v12, Llr9;

    .line 494
    .line 495
    invoke-virtual {v9}, Loq9;->J()Lvm4;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    check-cast v0, Ldr9;

    .line 500
    .line 501
    invoke-virtual {v0}, Ldr9;->J()Ld2a;

    .line 502
    .line 503
    .line 504
    move-result-object v18

    .line 505
    invoke-direct/range {v12 .. v18}, Llr9;-><init>(Lla;Lmr9;Lia9;Lhr9;ILd2a;)V

    .line 506
    .line 507
    .line 508
    :goto_5
    invoke-virtual {v8}, Llb9;->a()Lvm4;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    instance-of v4, v0, Lbr9;

    .line 513
    .line 514
    if-eqz v4, :cond_c

    .line 515
    .line 516
    check-cast v0, Lbr9;

    .line 517
    .line 518
    invoke-virtual {v0}, Lbr9;->J()Lvm4;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    check-cast v0, Ldr9;

    .line 523
    .line 524
    invoke-virtual {v0}, Ldr9;->J()Ld2a;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    goto :goto_6

    .line 529
    :cond_c
    instance-of v4, v0, Lns9;

    .line 530
    .line 531
    if-eqz v4, :cond_10

    .line 532
    .line 533
    check-cast v0, Lns9;

    .line 534
    .line 535
    invoke-virtual {v0}, Lns9;->J()Ld2a;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    :goto_6
    new-instance v4, Lrr9;

    .line 540
    .line 541
    iget v5, v8, Llb9;->d:I

    .line 542
    .line 543
    invoke-direct {v4, v12, v5}, Lrr9;-><init>(Lca9;I)V

    .line 544
    .line 545
    .line 546
    iget-object v5, v0, Ld2a;->a:[B

    .line 547
    .line 548
    array-length v6, v5

    .line 549
    if-eqz v6, :cond_e

    .line 550
    .line 551
    array-length v5, v5

    .line 552
    const/4 v6, 0x5

    .line 553
    if-ne v5, v6, :cond_d

    .line 554
    .line 555
    goto :goto_7

    .line 556
    :cond_d
    const-string v0, "PrefixMap only supports 0 and 5 byte prefixes"

    .line 557
    .line 558
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    return-object p0

    .line 562
    :cond_e
    :goto_7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    if-eqz v5, :cond_f

    .line 567
    .line 568
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    check-cast v0, Ljava/util/List;

    .line 573
    .line 574
    goto :goto_8

    .line 575
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    .line 576
    .line 577
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-object v0, v5

    .line 584
    :goto_8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    goto :goto_9

    .line 588
    :cond_10
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v2

    .line 598
    invoke-virtual {v0}, Lvm4;->G()Lbd9;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    const-string v3, "Cannot get output prefix for key of class "

    .line 607
    .line 608
    const-string v4, " with parameters "

    .line 609
    .line 610
    invoke-static {v3, v2, v4, v0}, Ldj7;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    throw v1

    .line 618
    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 619
    .line 620
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    move-result-object v1

    .line 624
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    throw v0

    .line 636
    :cond_12
    move-object/from16 v19, v4

    .line 637
    .line 638
    const/16 p0, 0x0

    .line 639
    .line 640
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 641
    .line 642
    move-object/from16 v0, p1

    .line 643
    .line 644
    move-object/from16 v4, v19

    .line 645
    .line 646
    const/4 v6, 0x0

    .line 647
    goto/16 :goto_1

    .line 648
    .line 649
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lix0;->q()V

    .line 650
    .line 651
    .line 652
    new-instance v0, Lqr9;

    .line 653
    .line 654
    new-instance v3, Lit9;

    .line 655
    .line 656
    invoke-direct {v3, v2}, Lit9;-><init>(Ljava/util/HashMap;)V

    .line 657
    .line 658
    .line 659
    invoke-direct {v0, v3}, Lqr9;-><init>(Lit9;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    return-object v0

    .line 667
    :cond_14
    const/16 p0, 0x0

    .line 668
    .line 669
    const-string v0, "HybridConfigurationV1 can only create HybridEncrypt and HybridDecrypt primitives"

    .line 670
    .line 671
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    return-object p0
.end method

.method public f(Lvm4;)Lpt9;
    .locals 3

    .line 1
    check-cast p1, Lnq9;

    .line 2
    .line 3
    invoke-static {p1}, Lgr9;->c(Lnq9;)Lwx9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lo69;->b()Lx69;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lgr9;->g:Lot9;

    .line 12
    .line 13
    iget-object v1, p1, Lnq9;->d:Lcq9;

    .line 14
    .line 15
    iget-object v1, v1, Lcq9;->d:Lzp9;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lot9;->k(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lr0a;

    .line 22
    .line 23
    iget-object p1, p1, Lnq9;->n:Ljava/lang/Integer;

    .line 24
    .line 25
    const-string v1, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-static {v1, p0, v2, v0, p1}, Lpt9;->a(Ljava/lang/String;Lt69;ILr0a;Ljava/lang/Integer;)Lpt9;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public g(Lot9;)Lbd9;
    .locals 3

    .line 1
    iget p0, p0, Lfo8;->a:I

    .line 2
    .line 3
    const-string v0, "Only version 0 parameters are accepted"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lmz9;

    .line 12
    .line 13
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v2, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v2, Lf79;->a:Lf79;

    .line 30
    .line 31
    invoke-static {p1, v2}, Lx0a;->u(Lt69;Lf79;)Lx0a;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    invoke-virtual {p1}, Lx0a;->t()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Ltn9;->a(Lr0a;)Lrf9;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1}, Lx0a;->x()La1a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, La1a;->t()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p0, p1}, Lxj9;->b(Lrf9;I)Lxj9;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 68
    .line 69
    const-string v0, "Parsing XAesGcmParameters failed: "

    .line 70
    .line 71
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_1
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string p1, "Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: "

    .line 80
    .line 81
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-object v1

    .line 89
    :pswitch_0
    iget-object p0, p1, Lot9;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Lmz9;

    .line 92
    .line 93
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v2, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    :try_start_1
    invoke-virtual {p0}, Lmz9;->A()Lt69;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget-object v2, Lf79;->a:Lf79;

    .line 110
    .line 111
    invoke-static {p1, v2}, Luw9;->u(Lt69;Lf79;)Luw9;

    .line 112
    .line 113
    .line 114
    move-result-object p1
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    invoke-virtual {p1}, Luw9;->w()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_2

    .line 120
    .line 121
    invoke-static {}, Ltg9;->b()Lcd;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1}, Luw9;->t()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-virtual {v0, p1}, Lcd;->o(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lmz9;->z()Lr0a;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0}, Lsl9;->a(Lr0a;)Lsg9;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    iput-object p0, v0, Lcd;->c:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcd;->n()Ltg9;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    invoke-static {v0}, Lm0;->h(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :catch_1
    move-exception p0

    .line 152
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 153
    .line 154
    const-string v0, "Parsing AesGcmSivParameters failed: "

    .line 155
    .line 156
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_3
    invoke-virtual {p0}, Lmz9;->B()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string p1, "Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: "

    .line 165
    .line 166
    invoke-static {p1, p0}, Lxs1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :goto_1
    return-object v1

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public j(Lfo8;Lorg/json/JSONObject;)Lfa7;
    .locals 13

    .line 1
    const-string p0, "settings_version"

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    const-string p0, "cache_duration"

    .line 8
    .line 9
    const/16 v0, 0xe10

    .line 10
    .line 11
    invoke-virtual {p2, p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const-string v0, "on_demand_upload_rate_per_minute"

    .line 16
    .line 17
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 18
    .line 19
    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v8

    .line 23
    const-string v0, "on_demand_backoff_base"

    .line 24
    .line 25
    const-wide v1, 0x3ff3333333333333L    # 1.2

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 31
    .line 32
    .line 33
    move-result-wide v10

    .line 34
    const-string v0, "on_demand_backoff_step_duration_seconds"

    .line 35
    .line 36
    const/16 v1, 0x3c

    .line 37
    .line 38
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    const-string v0, "session"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v2, 0x8

    .line 49
    .line 50
    const-string v3, "max_custom_exception_events"

    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    new-instance v1, Lme6;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Lme6;-><init>(I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    move-object v6, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    new-instance v1, Lme6;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lme6;-><init>(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_1
    const-string v0, "features"

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "collect_reports"

    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const-string v2, "collect_anrs"

    .line 98
    .line 99
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const-string v3, "collect_build_ids"

    .line 104
    .line 105
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    new-instance v7, Lea7;

    .line 110
    .line 111
    invoke-direct {v7, v1, v2, p1}, Lea7;-><init>(ZZZ)V

    .line 112
    .line 113
    .line 114
    int-to-long p0, p0

    .line 115
    const-string v0, "expires_at"

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_1

    .line 122
    .line 123
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 124
    .line 125
    .line 126
    move-result-wide p0

    .line 127
    :goto_2
    move-wide v4, p0

    .line 128
    goto :goto_3

    .line 129
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    const-wide/16 v2, 0x3e8

    .line 134
    .line 135
    mul-long/2addr p0, v2

    .line 136
    add-long/2addr p0, v0

    .line 137
    goto :goto_2

    .line 138
    :goto_3
    new-instance v3, Lfa7;

    .line 139
    .line 140
    invoke-direct/range {v3 .. v12}, Lfa7;-><init>(JLme6;Lea7;DDI)V

    .line 141
    .line 142
    .line 143
    return-object v3
.end method

.method public n(Lpt9;)Lvm4;
    .locals 4

    .line 1
    iget p0, p0, Lfo8;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p1, Lpt9;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :try_start_0
    iget-object p0, p1, Lpt9;->c:Lt69;

    .line 18
    .line 19
    sget-object v1, Lf79;->a:Lf79;

    .line 20
    .line 21
    invoke-static {p0, v1}, Liy9;->u(Lt69;Lf79;)Liy9;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Liy9;->t()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lmu9;->b()Lkc;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0}, Liy9;->A()Lt69;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lt69;->d()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, v1, Lkc;->b:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {p0}, Liy9;->z()Lpy9;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lpy9;->t()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput-object v2, v1, Lkc;->c:Ljava/lang/Object;

    .line 62
    .line 63
    sget-object v2, Lsu9;->b:Lot9;

    .line 64
    .line 65
    invoke-virtual {p0}, Liy9;->z()Lpy9;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lpy9;->w()Ljy9;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Llu9;

    .line 78
    .line 79
    iput-object v2, v1, Lkc;->d:Ljava/lang/Object;

    .line 80
    .line 81
    sget-object v2, Lsu9;->a:Lot9;

    .line 82
    .line 83
    iget-object v3, p1, Lpt9;->e:Lr0a;

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lot9;->l(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Lku9;

    .line 90
    .line 91
    iput-object v2, v1, Lkc;->e:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v1}, Lkc;->c()Lmu9;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Lu00;

    .line 98
    .line 99
    invoke-direct {v2}, Lu00;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v0, v2, Lu00;->c:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v0, v2, Lu00;->d:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v1, v2, Lu00;->b:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {p0}, Liy9;->A()Lt69;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lt69;->w()[B

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    new-instance v1, Lkm8;

    .line 117
    .line 118
    invoke-static {p0}, Ld2a;->a([B)Ld2a;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {v1, p0}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, v2, Lu00;->c:Ljava/lang/Object;

    .line 126
    .line 127
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 128
    .line 129
    iput-object p0, v2, Lu00;->d:Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v2}, Lu00;->k()Lhu9;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 137
    .line 138
    const-string p1, "Only version 0 keys are accepted"

    .line 139
    .line 140
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0
    :try_end_0
    .catch Lp79; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :catch_0
    const-string p0, "Parsing HmacKey failed"

    .line 145
    .line 146
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    const-string p0, "Wrong type URL in call to HmacProtoSerialization.parseKey"

    .line 151
    .line 152
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    return-object v0

    .line 156
    :pswitch_0
    const-string p0, "KmsAeadKey are only accepted with version 0, got "

    .line 157
    .line 158
    iget-object v1, p1, Lpt9;->a:Ljava/lang/String;

    .line 159
    .line 160
    const-string v2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_3

    .line 167
    .line 168
    :try_start_1
    iget-object v0, p1, Lpt9;->c:Lt69;

    .line 169
    .line 170
    sget-object v1, Lf79;->a:Lf79;

    .line 171
    .line 172
    invoke-static {v0, v1}, Lc0a;->u(Lt69;Lf79;)Lc0a;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lc0a;->t()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_2

    .line 181
    .line 182
    invoke-virtual {v0}, Lc0a;->x()Li0a;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0}, Li0a;->x()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    iget-object v0, p1, Lpt9;->e:Lr0a;

    .line 191
    .line 192
    invoke-static {v0}, Lwh9;->a(Lr0a;)Llh9;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v1, Lmh9;

    .line 197
    .line 198
    invoke-direct {v1, p0, v0}, Lmh9;-><init>(Ljava/lang/String;Llh9;)V

    .line 199
    .line 200
    .line 201
    iget-object p0, p1, Lpt9;->f:Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-static {v1, p0}, Lkh9;->K(Lmh9;Ljava/lang/Integer;)Lkh9;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    goto :goto_1

    .line 208
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 209
    .line 210
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1
    :try_end_1
    .catch Lp79; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :catch_1
    move-exception p0

    .line 223
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 224
    .line 225
    const-string v0, "Parsing KmsAeadKey failed: "

    .line 226
    .line 227
    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :cond_3
    const-string p0, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey"

    .line 232
    .line 233
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :goto_1
    return-object v0

    .line 237
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public p([B)Z
    .locals 3

    .line 1
    array-length p0, p1

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x0

    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    aget-byte p0, p1, v1

    .line 7
    .line 8
    const/4 v0, -0x4

    .line 9
    if-ne p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    aget-byte v0, p1, p0

    .line 13
    .line 14
    const/16 v2, 0x53

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    aget-byte v0, p1, v0

    .line 20
    .line 21
    const/16 v2, 0x4d

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    aget-byte p1, p1, v0

    .line 27
    .line 28
    const/16 v0, 0x42

    .line 29
    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    return p0

    .line 33
    :cond_0
    return v1
.end method

.method public read([B)Lev6;
    .locals 0

    .line 1
    new-instance p0, Lkd2;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkd2;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
