.class public final Lxv5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lv77;

.field public final b:Lae2;

.field public final c:Lgc8;

.field public final d:Lhd;

.field public final e:Lnn8;

.field public final f:Las5;

.field public final g:Z

.field public final h:Z

.field public i:Z

.field public j:Ljava/util/LinkedHashMap;

.field public k:Ljava/util/List;

.field public l:Lf41;

.field public m:Ljava/util/LinkedList;

.field public n:Ljava/util/LinkedList;

.field public o:Ljava/util/LinkedList;

.field public p:Ljava/util/LinkedList;

.field public q:Ljava/util/LinkedList;

.field public r:Ljava/util/LinkedList;

.field public s:Ljava/util/LinkedHashMap;

.field public t:Lbk4;


# direct methods
.method public constructor <init>(Lv77;Lgc8;Lhd;Lae2;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lxv5;->a:Lv77;

    .line 13
    .line 14
    iput-object v2, v0, Lxv5;->c:Lgc8;

    .line 15
    .line 16
    iput-object v3, v0, Lxv5;->d:Lhd;

    .line 17
    .line 18
    iget-object v4, v2, Lgc8;->f:Ljava/lang/Class;

    .line 19
    .line 20
    invoke-static {v4}, Lu81;->s(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    iput-boolean v4, v0, Lxv5;->h:Z

    .line 25
    .line 26
    sget-object v4, Lu65;->c:Lu65;

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Ls65;->i(Lu65;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    iput-boolean v4, v0, Lxv5;->g:Z

    .line 36
    .line 37
    invoke-virtual {v1}, Ls65;->d()Las5;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iput-object v4, v0, Lxv5;->f:Las5;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v4, 0x0

    .line 45
    iput-boolean v4, v0, Lxv5;->g:Z

    .line 46
    .line 47
    sget-object v4, Lgo5;->a:Lgo5;

    .line 48
    .line 49
    iput-object v4, v0, Lxv5;->f:Las5;

    .line 50
    .line 51
    :goto_0
    iget-object v2, v2, Lgc8;->f:Ljava/lang/Class;

    .line 52
    .line 53
    iget-object v4, v1, Lt65;->k:Lmp7;

    .line 54
    .line 55
    invoke-static {v2}, Lu81;->p(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    sget-object v2, Lnn8;->k:Lnn8;

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-wide v5, v1, Ls65;->a:J

    .line 69
    .line 70
    sget-wide v7, Lt65;->q:J

    .line 71
    .line 72
    and-long/2addr v5, v7

    .line 73
    cmp-long v5, v5, v7

    .line 74
    .line 75
    sget-object v9, Lyi4;->a:Lyi4;

    .line 76
    .line 77
    sget-object v6, Lnn8;->f:Lnn8;

    .line 78
    .line 79
    if-eqz v5, :cond_a

    .line 80
    .line 81
    sget-object v5, Lu65;->f:Lu65;

    .line 82
    .line 83
    invoke-virtual {v1, v5}, Ls65;->i(Lu65;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    sget-object v11, Lyi4;->c:Lyi4;

    .line 88
    .line 89
    if-nez v5, :cond_2

    .line 90
    .line 91
    new-instance v6, Lnn8;

    .line 92
    .line 93
    sget-object v7, Lyi4;->b:Lyi4;

    .line 94
    .line 95
    move-object v8, v7

    .line 96
    move-object v10, v9

    .line 97
    invoke-direct/range {v6 .. v11}, Lnn8;-><init>(Lyi4;Lyi4;Lyi4;Lyi4;Lyi4;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    sget-object v5, Lu65;->k:Lu65;

    .line 101
    .line 102
    invoke-virtual {v1, v5}, Ls65;->i(Lu65;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_4

    .line 107
    .line 108
    iget-object v5, v6, Lnn8;->a:Lyi4;

    .line 109
    .line 110
    if-ne v5, v11, :cond_3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    new-instance v10, Lnn8;

    .line 114
    .line 115
    iget-object v12, v6, Lnn8;->b:Lyi4;

    .line 116
    .line 117
    iget-object v13, v6, Lnn8;->c:Lyi4;

    .line 118
    .line 119
    iget-object v14, v6, Lnn8;->d:Lyi4;

    .line 120
    .line 121
    iget-object v15, v6, Lnn8;->e:Lyi4;

    .line 122
    .line 123
    invoke-direct/range {v10 .. v15}, Lnn8;-><init>(Lyi4;Lyi4;Lyi4;Lyi4;Lyi4;)V

    .line 124
    .line 125
    .line 126
    move-object v6, v10

    .line 127
    :cond_4
    :goto_1
    sget-object v5, Lu65;->n:Lu65;

    .line 128
    .line 129
    invoke-virtual {v1, v5}, Ls65;->i(Lu65;)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-nez v5, :cond_6

    .line 134
    .line 135
    iget-object v5, v6, Lnn8;->b:Lyi4;

    .line 136
    .line 137
    if-ne v5, v11, :cond_5

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    new-instance v10, Lnn8;

    .line 141
    .line 142
    move-object v12, v11

    .line 143
    iget-object v11, v6, Lnn8;->a:Lyi4;

    .line 144
    .line 145
    iget-object v13, v6, Lnn8;->c:Lyi4;

    .line 146
    .line 147
    iget-object v14, v6, Lnn8;->d:Lyi4;

    .line 148
    .line 149
    iget-object v15, v6, Lnn8;->e:Lyi4;

    .line 150
    .line 151
    invoke-direct/range {v10 .. v15}, Lnn8;-><init>(Lyi4;Lyi4;Lyi4;Lyi4;Lyi4;)V

    .line 152
    .line 153
    .line 154
    move-object v11, v12

    .line 155
    move-object v6, v10

    .line 156
    :cond_6
    :goto_2
    sget-object v5, Lu65;->p:Lu65;

    .line 157
    .line 158
    invoke-virtual {v1, v5}, Ls65;->i(Lu65;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_8

    .line 163
    .line 164
    iget-object v5, v6, Lnn8;->c:Lyi4;

    .line 165
    .line 166
    if-ne v5, v11, :cond_7

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_7
    new-instance v10, Lnn8;

    .line 170
    .line 171
    move-object v12, v11

    .line 172
    iget-object v11, v6, Lnn8;->a:Lyi4;

    .line 173
    .line 174
    move-object v13, v12

    .line 175
    iget-object v12, v6, Lnn8;->b:Lyi4;

    .line 176
    .line 177
    iget-object v14, v6, Lnn8;->d:Lyi4;

    .line 178
    .line 179
    iget-object v15, v6, Lnn8;->e:Lyi4;

    .line 180
    .line 181
    invoke-direct/range {v10 .. v15}, Lnn8;-><init>(Lyi4;Lyi4;Lyi4;Lyi4;Lyi4;)V

    .line 182
    .line 183
    .line 184
    move-object v11, v13

    .line 185
    move-object v6, v10

    .line 186
    :cond_8
    :goto_3
    sget-object v5, Lu65;->e:Lu65;

    .line 187
    .line 188
    invoke-virtual {v1, v5}, Ls65;->i(Lu65;)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-nez v5, :cond_a

    .line 193
    .line 194
    iget-object v5, v6, Lnn8;->d:Lyi4;

    .line 195
    .line 196
    if-ne v5, v11, :cond_9

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    new-instance v10, Lnn8;

    .line 200
    .line 201
    move-object v12, v11

    .line 202
    iget-object v11, v6, Lnn8;->a:Lyi4;

    .line 203
    .line 204
    move-object v13, v12

    .line 205
    iget-object v12, v6, Lnn8;->b:Lyi4;

    .line 206
    .line 207
    move-object v14, v13

    .line 208
    iget-object v13, v6, Lnn8;->c:Lyi4;

    .line 209
    .line 210
    iget-object v15, v6, Lnn8;->e:Lyi4;

    .line 211
    .line 212
    invoke-direct/range {v10 .. v15}, Lnn8;-><init>(Lyi4;Lyi4;Lyi4;Lyi4;Lyi4;)V

    .line 213
    .line 214
    .line 215
    move-object v6, v10

    .line 216
    :cond_a
    :goto_4
    invoke-static {v2}, Lu81;->s(Ljava/lang/Class;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_c

    .line 221
    .line 222
    sget-object v2, Lu65;->e:Lu65;

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ls65;->i(Lu65;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_c

    .line 229
    .line 230
    iget-object v2, v6, Lnn8;->d:Lyi4;

    .line 231
    .line 232
    if-ne v2, v9, :cond_b

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_b
    new-instance v2, Lnn8;

    .line 236
    .line 237
    iget-object v7, v6, Lnn8;->a:Lyi4;

    .line 238
    .line 239
    iget-object v8, v6, Lnn8;->b:Lyi4;

    .line 240
    .line 241
    move-object v10, v9

    .line 242
    iget-object v9, v6, Lnn8;->c:Lyi4;

    .line 243
    .line 244
    iget-object v11, v6, Lnn8;->e:Lyi4;

    .line 245
    .line 246
    move-object v6, v2

    .line 247
    invoke-direct/range {v6 .. v11}, Lnn8;-><init>(Lyi4;Lyi4;Lyi4;Lyi4;Lyi4;)V

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_c
    :goto_5
    move-object v2, v6

    .line 252
    :goto_6
    invoke-virtual {v1}, Ls65;->d()Las5;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v3, v2}, Las5;->b(Lhd;Lnn8;)Lnn8;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    iput-object v1, v0, Lxv5;->e:Lnn8;

    .line 264
    .line 265
    move-object/from16 v1, p4

    .line 266
    .line 267
    iput-object v1, v0, Lxv5;->b:Lae2;

    .line 268
    .line 269
    return-void
.end method

.method public static g(Ljava/util/LinkedList;)Z
    .locals 5

    .line 1
    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lod;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lod;

    .line 14
    .line 15
    instance-of v4, v1, Lld;

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    instance-of v1, v3, Lpd;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    instance-of v1, v1, Lpd;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    instance-of v1, v3, Lld;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-gt v0, v2, :cond_0

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    return v0
.end method


# virtual methods
.method public final a(Lf41;Ljava/util/List;Ljava/util/LinkedHashMap;Z)V
    .locals 9

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lk36;

    .line 16
    .line 17
    iget-boolean v1, v0, Lk36;->b:Z

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lk36;->c:Lej4;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    iget-object v4, p0, Lxv5;->a:Lv77;

    .line 34
    .line 35
    if-eq v1, v3, :cond_a

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    if-eq v1, v5, :cond_9

    .line 39
    .line 40
    iget-object v1, v0, Lk36;->a:Lud;

    .line 41
    .line 42
    invoke-virtual {v1}, Lud;->x0()I

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Lk36;->b(Ls65;)V

    .line 46
    .line 47
    .line 48
    iget-object v5, v0, Lk36;->e:[Lz86;

    .line 49
    .line 50
    array-length v5, v5

    .line 51
    move v6, v2

    .line 52
    :goto_1
    if-ge v6, v5, :cond_3

    .line 53
    .line 54
    iget-object v7, v0, Lk36;->e:[Lz86;

    .line 55
    .line 56
    aget-object v7, v7, v6

    .line 57
    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    iget-object v5, p0, Lxv5;->r:Ljava/util/LinkedList;

    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_4

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_4
    invoke-virtual {v1}, Lud;->x0()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-ne v5, v3, :cond_8

    .line 82
    .line 83
    iget-object v5, v0, Lk36;->d:[Lz86;

    .line 84
    .line 85
    aget-object v5, v5, v2

    .line 86
    .line 87
    if-eqz v5, :cond_7

    .line 88
    .line 89
    iget-object v6, v5, Lz86;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Law5;

    .line 96
    .line 97
    if-eqz v6, :cond_5

    .line 98
    .line 99
    invoke-virtual {v6}, Law5;->L()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    invoke-virtual {v6}, Law5;->K()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_7

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_7

    .line 125
    .line 126
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    check-cast v7, Law5;

    .line 131
    .line 132
    invoke-virtual {v7}, Law5;->L()Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eqz v8, :cond_6

    .line 137
    .line 138
    invoke-virtual {v7}, Law5;->K()Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-nez v8, :cond_6

    .line 143
    .line 144
    iget-object v8, v7, Law5;->k:Lyv5;

    .line 145
    .line 146
    invoke-static {v8, v5}, Law5;->G(Lyv5;Lz86;)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-nez v8, :cond_9

    .line 151
    .line 152
    iget-object v8, v7, Law5;->p:Lyv5;

    .line 153
    .line 154
    invoke-static {v8, v5}, Law5;->G(Lyv5;Lz86;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-nez v8, :cond_9

    .line 159
    .line 160
    iget-object v8, v7, Law5;->q:Lyv5;

    .line 161
    .line 162
    invoke-static {v8, v5}, Law5;->G(Lyv5;Lz86;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-nez v8, :cond_9

    .line 167
    .line 168
    iget-object v7, v7, Law5;->n:Lyv5;

    .line 169
    .line 170
    invoke-static {v7, v5}, Law5;->G(Lyv5;Lz86;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_6

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_7
    iget-object v5, p0, Lxv5;->f:Las5;

    .line 178
    .line 179
    if-eqz v5, :cond_a

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Lud;->w0(I)Ltd;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v5, v1}, Las5;->i(Lod;)Lbh4;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-eqz v1, :cond_a

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_8
    invoke-virtual {v0, v4}, Lk36;->a(Lv77;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    goto :goto_3

    .line 197
    :cond_9
    :goto_2
    move v2, v3

    .line 198
    :cond_a
    :goto_3
    if-eqz v2, :cond_b

    .line 199
    .line 200
    if-nez p4, :cond_0

    .line 201
    .line 202
    const-string v1, "explicit"

    .line 203
    .line 204
    invoke-virtual {p1, v4, v0, v1}, Lf41;->e(Ls65;Lk36;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_b
    iget-object v1, p1, Lf41;->b:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v1, Ljava/util/ArrayList;

    .line 212
    .line 213
    if-nez v1, :cond_c

    .line 214
    .line 215
    new-instance v1, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    iput-object v1, p1, Lf41;->b:Ljava/lang/Object;

    .line 221
    .line 222
    :cond_c
    iget-object v1, p1, Lf41;->b:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v1, Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_d
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final c(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lud;

    .line 30
    .line 31
    iget-boolean v2, p0, Lxv5;->g:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lxv5;->f:Las5;

    .line 36
    .line 37
    iget-object v3, p0, Lxv5;->a:Lv77;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v1}, Las5;->d(Lv77;Lud;)Lej4;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v2, 0x0

    .line 45
    :goto_1
    new-instance v3, Lk36;

    .line 46
    .line 47
    invoke-direct {v3, v1, v2}, Lk36;-><init>(Lud;Lej4;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-object v0
.end method

.method public final d(Lbh4;Lod;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lbh4;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, p0, Lxv5;->s:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lxv5;->s:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lxv5;->s:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lod;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-eq v0, p2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p1}, Lu81;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "Duplicate injectable value with id \'%s\' (of type %s)"

    .line 47
    .line 48
    invoke-virtual {p0, p2, p1}, Lxv5;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0

    .line 53
    :cond_3
    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Law5;
    .locals 7

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Law5;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Law5;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-static {p1}, Lz86;->a(Ljava/lang/String;)Lz86;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    iget-object v2, p0, Lxv5;->a:Lv77;

    .line 17
    .line 18
    iget-object v3, p0, Lxv5;->f:Las5;

    .line 19
    .line 20
    move-object v6, v5

    .line 21
    invoke-direct/range {v1 .. v6}, Law5;-><init>(Ls65;Las5;ZLz86;Lz86;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    return-object v0
.end method

.method public final f(Ljava/util/LinkedHashMap;Lz86;)Law5;
    .locals 8

    .line 1
    iget-object v0, p2, Lz86;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Law5;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Law5;

    .line 12
    .line 13
    iget-object v4, p0, Lxv5;->f:Las5;

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    iget-object v3, p0, Lxv5;->a:Lv77;

    .line 17
    .line 18
    move-object v7, p2

    .line 19
    move-object v6, p2

    .line 20
    invoke-direct/range {v2 .. v7}, Law5;-><init>(Ls65;Las5;ZLz86;Lz86;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_0
    return-object v1
.end method

.method public final h(Ljava/util/LinkedHashMap;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lxv5;->f:Las5;

    .line 2
    .line 3
    iget-object v1, p0, Lxv5;->d:Lhd;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Las5;->I(Ljb9;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lxv5;->a:Lv77;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lu65;->L:Lu65;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ls65;->i(Lu65;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Law5;

    .line 44
    .line 45
    invoke-virtual {v5}, Law5;->i()Lx86;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v5, v5, Lx86;->c:Ljava/lang/Integer;

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v4, v6

    .line 56
    :goto_1
    invoke-virtual {v0, v1}, Las5;->H(Lhd;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lxv5;->k:Ljava/util/List;

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    new-instance v5, Ljava/util/TreeMap;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    add-int v7, v1, v1

    .line 86
    .line 87
    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 88
    .line 89
    .line 90
    :goto_2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_5

    .line 103
    .line 104
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    check-cast v8, Law5;

    .line 109
    .line 110
    invoke-virtual {v8}, Law5;->j()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_5
    iget-object v7, p0, Lxv5;->m:Ljava/util/LinkedList;

    .line 119
    .line 120
    if-eqz v7, :cond_6

    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    check-cast v7, Lod;

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    iget-object v7, p0, Lxv5;->n:Ljava/util/LinkedList;

    .line 130
    .line 131
    if-eqz v7, :cond_d

    .line 132
    .line 133
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Lod;

    .line 138
    .line 139
    :goto_4
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 140
    .line 141
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    mul-int/lit8 v9, v9, 0x2

    .line 146
    .line 147
    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const/4 v9, 0x0

    .line 159
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    if-eqz v10, :cond_b

    .line 164
    .line 165
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    check-cast v10, Law5;

    .line 170
    .line 171
    iget-object v11, v10, Law5;->k:Lyv5;

    .line 172
    .line 173
    invoke-virtual {v7}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    :goto_6
    if-eqz v11, :cond_8

    .line 178
    .line 179
    iget-object v13, v11, Lyv5;->a:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v13, Lod;

    .line 182
    .line 183
    invoke-virtual {v13}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    if-ne v13, v12, :cond_7

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_7
    iget-object v11, v11, Lyv5;->b:Lyv5;

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_8
    iget-object v11, v10, Law5;->p:Lyv5;

    .line 194
    .line 195
    invoke-virtual {v7}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    :goto_7
    if-eqz v11, :cond_a

    .line 200
    .line 201
    iget-object v13, v11, Lyv5;->a:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v13, Lod;

    .line 204
    .line 205
    invoke-virtual {v13}, Lod;->r0()Ljava/lang/reflect/Member;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    if-ne v13, v12, :cond_9

    .line 210
    .line 211
    :goto_8
    move-object v9, v10

    .line 212
    goto :goto_5

    .line 213
    :cond_9
    iget-object v11, v11, Lyv5;->b:Lyv5;

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_a
    invoke-virtual {v10}, Law5;->j()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_b
    if-eqz v9, :cond_c

    .line 225
    .line 226
    invoke-virtual {v9}, Law5;->j()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :cond_c
    move-object v5, v8

    .line 234
    :cond_d
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 235
    .line 236
    add-int/2addr v1, v1

    .line 237
    invoke-direct {v7, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 238
    .line 239
    .line 240
    if-eqz v0, :cond_11

    .line 241
    .line 242
    array-length v1, v0

    .line 243
    :goto_9
    if-ge v6, v1, :cond_11

    .line 244
    .line 245
    aget-object v8, v0, v6

    .line 246
    .line 247
    invoke-interface {v5, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    check-cast v9, Law5;

    .line 252
    .line 253
    if-nez v9, :cond_f

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    :cond_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    if-eqz v11, :cond_f

    .line 268
    .line 269
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    check-cast v11, Law5;

    .line 274
    .line 275
    iget-object v12, v11, Law5;->f:Lz86;

    .line 276
    .line 277
    iget-object v12, v12, Lz86;->a:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    if-eqz v12, :cond_e

    .line 284
    .line 285
    invoke-virtual {v11}, Law5;->j()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    move-object v9, v11

    .line 290
    :cond_f
    if-eqz v9, :cond_10

    .line 291
    .line 292
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    :cond_10
    add-int/lit8 v6, v6, 0x1

    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_11
    if-eqz v4, :cond_14

    .line 299
    .line 300
    new-instance v0, Ljava/util/TreeMap;

    .line 301
    .line 302
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    :cond_12
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_13

    .line 318
    .line 319
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    check-cast v4, Ljava/util/Map$Entry;

    .line 324
    .line 325
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    check-cast v4, Law5;

    .line 330
    .line 331
    invoke-virtual {v4}, Law5;->i()Lx86;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    iget-object v6, v6, Lx86;->c:Ljava/lang/Integer;

    .line 336
    .line 337
    if-eqz v6, :cond_12

    .line 338
    .line 339
    invoke-virtual {v0, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 343
    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_13
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_14

    .line 359
    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Law5;

    .line 365
    .line 366
    invoke-virtual {v1}, Law5;->j()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_14
    iget-object v0, p0, Lxv5;->k:Ljava/util/List;

    .line 375
    .line 376
    if-eqz v0, :cond_1b

    .line 377
    .line 378
    if-eqz v2, :cond_15

    .line 379
    .line 380
    sget-object v0, Lu65;->M:Lu65;

    .line 381
    .line 382
    invoke-virtual {v3, v0}, Ls65;->i(Lu65;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_1b

    .line 387
    .line 388
    :cond_15
    if-eqz v2, :cond_18

    .line 389
    .line 390
    sget-object v0, Lu65;->N:Lu65;

    .line 391
    .line 392
    invoke-virtual {v3, v0}, Ls65;->i(Lu65;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-nez v0, :cond_18

    .line 397
    .line 398
    new-instance v0, Ljava/util/TreeMap;

    .line 399
    .line 400
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 401
    .line 402
    .line 403
    iget-object p0, p0, Lxv5;->k:Ljava/util/List;

    .line 404
    .line 405
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object p0

    .line 409
    :cond_16
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_17

    .line 414
    .line 415
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Law5;

    .line 420
    .line 421
    if-eqz v1, :cond_16

    .line 422
    .line 423
    invoke-virtual {v1}, Law5;->j()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    goto :goto_c

    .line 431
    :cond_17
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 432
    .line 433
    .line 434
    move-result-object p0

    .line 435
    goto :goto_d

    .line 436
    :cond_18
    iget-object p0, p0, Lxv5;->k:Ljava/util/List;

    .line 437
    .line 438
    :goto_d
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    :cond_19
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_1b

    .line 447
    .line 448
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    check-cast v0, Law5;

    .line 453
    .line 454
    if-nez v0, :cond_1a

    .line 455
    .line 456
    goto :goto_e

    .line 457
    :cond_1a
    invoke-virtual {v0}, Law5;->j()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v2

    .line 465
    if-eqz v2, :cond_19

    .line 466
    .line 467
    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    goto :goto_e

    .line 471
    :cond_1b
    invoke-interface {v7, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    .line 475
    .line 476
    .line 477
    invoke-interface {p1, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 478
    .line 479
    .line 480
    return-void
.end method

.method public final i()V
    .locals 31

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lxv5;->d:Lhd;

    iget-object v2, v1, Lhd;->N:Ljava/lang/Class;

    new-instance v3, Lf41;

    .line 2
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v3, v0, Lxv5;->l:Lf41;

    .line 4
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    sget-object v4, Lu65;->d:Lu65;

    iget-object v5, v0, Lxv5;->a:Lv77;

    invoke-virtual {v5, v4}, Ls65;->i(Lu65;)Z

    move-result v4

    .line 6
    invoke-virtual {v1}, Lhd;->q0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    iget-object v8, v0, Lxv5;->b:Lae2;

    iget-object v9, v0, Lxv5;->e:Lnn8;

    const/4 v10, 0x0

    iget-object v13, v0, Lxv5;->f:Las5;

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lld;

    .line 7
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v15}, Las5;->U(Lod;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 8
    iget-object v14, v0, Lxv5;->q:Ljava/util/LinkedList;

    if-nez v14, :cond_0

    .line 9
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    iput-object v14, v0, Lxv5;->q:Ljava/util/LinkedList;

    .line 10
    :cond_0
    iget-object v14, v0, Lxv5;->q:Ljava/util/LinkedList;

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_1
    invoke-virtual {v13, v15}, Las5;->V(Lod;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 12
    iget-object v7, v0, Lxv5;->r:Ljava/util/LinkedList;

    if-nez v7, :cond_2

    .line 13
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v0, Lxv5;->r:Ljava/util/LinkedList;

    .line 14
    :cond_2
    iget-object v7, v0, Lxv5;->r:Ljava/util/LinkedList;

    invoke-virtual {v7, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v13, v15}, Las5;->R(Lod;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 16
    invoke-virtual {v13, v15}, Las5;->T(Lod;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v14, :cond_4

    if-eqz v7, :cond_8

    :cond_4
    if-eqz v14, :cond_6

    .line 17
    iget-object v11, v0, Lxv5;->n:Ljava/util/LinkedList;

    if-nez v11, :cond_5

    .line 18
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    iput-object v11, v0, Lxv5;->n:Ljava/util/LinkedList;

    .line 19
    :cond_5
    iget-object v11, v0, Lxv5;->n:Ljava/util/LinkedList;

    invoke-virtual {v11, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v7, :cond_8

    .line 20
    iget-object v7, v0, Lxv5;->p:Ljava/util/LinkedList;

    if-nez v7, :cond_7

    .line 21
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v0, Lxv5;->p:Ljava/util/LinkedList;

    .line 22
    :cond_7
    iget-object v7, v0, Lxv5;->p:Ljava/util/LinkedList;

    invoke-virtual {v7, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 23
    :cond_8
    iget-object v7, v15, Lld;->O:Ljava/lang/reflect/Field;

    .line 24
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    .line 25
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_9

    goto/16 :goto_0

    .line 26
    :cond_9
    invoke-static {v7, v10}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    .line 27
    invoke-virtual {v13, v15}, Las5;->n(Lod;)Lz86;

    move-result-object v8

    if-eqz v8, :cond_a

    const/4 v11, 0x1

    goto :goto_1

    :cond_a
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_b

    .line 28
    invoke-virtual {v8}, Lz86;->c()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 29
    invoke-static {v7, v10}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    move-result-object v8

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v17, v8

    goto :goto_3

    :cond_b
    move/from16 v18, v11

    goto :goto_2

    :goto_3
    if-eqz v17, :cond_c

    const/16 v16, 0x1

    goto :goto_4

    :cond_c
    const/16 v16, 0x0

    :goto_4
    if-nez v16, :cond_d

    .line 30
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v8, v15, Lld;->O:Ljava/lang/reflect/Field;

    .line 32
    iget-object v9, v9, Lnn8;->e:Lyi4;

    invoke-virtual {v9, v8}, Lyi4;->a(Ljava/lang/reflect/Member;)Z

    move-result v16

    :cond_d
    move/from16 v19, v16

    .line 33
    invoke-virtual {v13, v15}, Las5;->X(Lod;)Z

    move-result v8

    .line 34
    iget-object v9, v15, Lld;->O:Ljava/lang/reflect/Field;

    .line 35
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    .line 36
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v9

    if-eqz v9, :cond_f

    if-nez v11, :cond_f

    if-eqz v4, :cond_e

    const/16 v20, 0x1

    goto :goto_5

    :cond_e
    if-nez v8, :cond_f

    goto/16 :goto_0

    :cond_f
    move/from16 v20, v8

    .line 37
    :goto_5
    invoke-virtual {v0, v7, v3}, Lxv5;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Law5;

    move-result-object v7

    .line 38
    new-instance v14, Lyv5;

    iget-object v8, v7, Law5;->k:Lyv5;

    move-object/from16 v16, v8

    invoke-direct/range {v14 .. v20}, Lyv5;-><init>(Ljava/lang/Object;Lyv5;Lz86;ZZZ)V

    iput-object v14, v7, Law5;->k:Lyv5;

    goto/16 :goto_0

    .line 39
    :cond_10
    invoke-virtual {v1}, Lhd;->r0()Lsd;

    move-result-object v4

    invoke-virtual {v4}, Lsd;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpd;

    .line 40
    iget-object v11, v6, Lpd;->P:Ljava/lang/reflect/Method;

    .line 41
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v14

    if-nez v14, :cond_20

    .line 42
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 43
    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v14, :cond_11

    const-class v14, Ljava/lang/Void;

    if-ne v7, v14, :cond_12

    sget-object v7, Lu65;->y:Lu65;

    .line 44
    invoke-virtual {v5, v7}, Ls65;->i(Lu65;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_6

    .line 45
    :cond_12
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v6}, Las5;->R(Lod;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 46
    iget-object v7, v0, Lxv5;->m:Ljava/util/LinkedList;

    if-nez v7, :cond_13

    .line 47
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v0, Lxv5;->m:Ljava/util/LinkedList;

    .line 48
    :cond_13
    iget-object v7, v0, Lxv5;->m:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 49
    :cond_14
    invoke-virtual {v13, v6}, Las5;->U(Lod;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 50
    iget-object v7, v0, Lxv5;->q:Ljava/util/LinkedList;

    if-nez v7, :cond_15

    .line 51
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v0, Lxv5;->q:Ljava/util/LinkedList;

    .line 52
    :cond_15
    iget-object v7, v0, Lxv5;->q:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 53
    :cond_16
    invoke-virtual {v13, v6}, Las5;->V(Lod;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 54
    iget-object v7, v0, Lxv5;->r:Ljava/util/LinkedList;

    if-nez v7, :cond_17

    .line 55
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v0, Lxv5;->r:Ljava/util/LinkedList;

    .line 56
    :cond_17
    iget-object v7, v0, Lxv5;->r:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 57
    :cond_18
    :goto_7
    invoke-virtual {v13, v6}, Las5;->n(Lod;)Lz86;

    move-result-object v7

    if-eqz v7, :cond_19

    const/4 v14, 0x1

    goto :goto_8

    :cond_19
    const/4 v14, 0x0

    :goto_8
    if-nez v14, :cond_1c

    .line 58
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    .line 59
    invoke-virtual {v8, v6, v15}, Lae2;->c(Lpd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1b

    .line 60
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    .line 61
    invoke-virtual {v8, v6, v15}, Lae2;->a(Lpd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1a

    goto/16 :goto_6

    .line 62
    :cond_1a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iget-object v12, v9, Lnn8;->b:Lyi4;

    invoke-virtual {v12, v11}, Lyi4;->a(Ljava/lang/reflect/Member;)Z

    move-result v11

    :goto_9
    move-object/from16 v20, v7

    move/from16 v22, v11

    move/from16 v21, v14

    goto :goto_b

    .line 64
    :cond_1b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iget-object v12, v9, Lnn8;->a:Lyi4;

    invoke-virtual {v12, v11}, Lyi4;->a(Ljava/lang/reflect/Member;)Z

    move-result v11

    goto :goto_9

    .line 66
    :cond_1c
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 67
    invoke-virtual {v8, v6, v12}, Lae2;->c(Lpd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1d

    .line 68
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    .line 69
    invoke-virtual {v8, v6, v12}, Lae2;->a(Lpd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1d
    if-nez v12, :cond_1e

    .line 70
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    goto :goto_a

    :cond_1e
    move-object v15, v12

    .line 71
    :goto_a
    invoke-virtual {v7}, Lz86;->c()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 72
    invoke-static {v15, v10}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    move-result-object v7

    const/4 v14, 0x0

    :cond_1f
    move-object/from16 v20, v7

    move/from16 v21, v14

    const/16 v22, 0x1

    .line 73
    :goto_b
    invoke-virtual {v0, v15}, Lxv5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {v13, v6}, Las5;->X(Lod;)Z

    move-result v23

    .line 75
    invoke-virtual {v0, v7, v3}, Lxv5;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Law5;

    move-result-object v7

    .line 76
    new-instance v17, Lyv5;

    iget-object v11, v7, Law5;->p:Lyv5;

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    invoke-direct/range {v17 .. v23}, Lyv5;-><init>(Ljava/lang/Object;Lyv5;Lz86;ZZZ)V

    move-object/from16 v6, v17

    iput-object v6, v7, Law5;->p:Lyv5;

    goto/16 :goto_6

    :cond_20
    const/4 v12, 0x1

    if-ne v14, v12, :cond_26

    .line 77
    invoke-virtual {v13, v6}, Las5;->m(Lod;)Lz86;

    move-result-object v7

    if-eqz v7, :cond_21

    const/4 v12, 0x1

    goto :goto_c

    :cond_21
    const/4 v12, 0x0

    :goto_c
    if-nez v12, :cond_23

    .line 78
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 79
    invoke-virtual {v8, v14}, Lae2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_22

    goto/16 :goto_6

    .line 80
    :cond_22
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    iget-object v15, v9, Lnn8;->c:Lyi4;

    invoke-virtual {v15, v11}, Lyi4;->a(Ljava/lang/reflect/Member;)Z

    move-result v11

    move/from16 v22, v11

    :goto_d
    move-object/from16 v20, v7

    move/from16 v21, v12

    goto :goto_e

    .line 82
    :cond_23
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 83
    invoke-virtual {v8, v14}, Lae2;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_24

    .line 84
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    .line 85
    :cond_24
    invoke-virtual {v7}, Lz86;->c()Z

    move-result v11

    if-eqz v11, :cond_25

    .line 86
    invoke-static {v14, v10}, Lz86;->b(Ljava/lang/String;Ljava/lang/String;)Lz86;

    move-result-object v7

    const/4 v12, 0x0

    :cond_25
    const/16 v22, 0x1

    goto :goto_d

    .line 87
    :goto_e
    invoke-virtual {v0, v14}, Lxv5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-virtual {v13, v6}, Las5;->X(Lod;)Z

    move-result v23

    .line 89
    invoke-virtual {v0, v7, v3}, Lxv5;->e(Ljava/lang/String;Ljava/util/LinkedHashMap;)Law5;

    move-result-object v7

    .line 90
    new-instance v17, Lyv5;

    iget-object v11, v7, Law5;->q:Lyv5;

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    invoke-direct/range {v17 .. v23}, Lyv5;-><init>(Ljava/lang/Object;Lyv5;Lz86;ZZZ)V

    move-object/from16 v6, v17

    iput-object v6, v7, Law5;->q:Lyv5;

    goto/16 :goto_6

    :cond_26
    if-ne v14, v7, :cond_11

    .line 91
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v6}, Las5;->T(Lod;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 92
    iget-object v7, v0, Lxv5;->o:Ljava/util/LinkedList;

    if-nez v7, :cond_27

    .line 93
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v0, Lxv5;->o:Ljava/util/LinkedList;

    .line 94
    :cond_27
    iget-object v7, v0, Lxv5;->o:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 95
    :cond_28
    iget-object v4, v1, Lhd;->Z:Ljava/lang/Boolean;

    if-nez v4, :cond_2b

    .line 96
    sget-object v4, Lu81;->a:[Ljava/lang/annotation/Annotation;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 98
    invoke-static {v2}, Lu81;->r(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object v4, v10

    goto :goto_f

    :cond_29
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    :goto_f
    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_10

    :cond_2a
    const/4 v4, 0x0

    .line 99
    :goto_10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lhd;->Z:Ljava/lang/Boolean;

    .line 100
    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_6b

    .line 101
    iget-object v4, v0, Lxv5;->l:Lf41;

    .line 102
    invoke-virtual {v1}, Lhd;->p0()Lgd;

    move-result-object v8

    .line 103
    iget-object v8, v8, Lgd;->c:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 104
    invoke-virtual {v0, v8}, Lxv5;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 105
    invoke-virtual {v1}, Lhd;->p0()Lgd;

    move-result-object v11

    .line 106
    iget-object v11, v11, Lgd;->d:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .line 107
    invoke-virtual {v0, v11}, Lxv5;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 108
    iget-boolean v12, v0, Lxv5;->h:Z

    if-eqz v12, :cond_39

    .line 109
    sget-object v12, Lvg4;->e:Ljava/lang/RuntimeException;

    if-nez v12, :cond_38

    .line 110
    sget-object v12, Lvg4;->d:Lvg4;

    .line 111
    invoke-virtual {v12, v2}, Lvg4;->a(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2c

    move-object v15, v10

    goto/16 :goto_15

    .line 112
    :cond_2c
    array-length v15, v14

    new-array v15, v15, [Lh80;

    const/4 v6, 0x0

    .line 113
    :goto_11
    array-length v7, v14

    if-ge v6, v7, :cond_2d

    .line 114
    :try_start_0
    iget-object v7, v12, Lvg4;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v19, v2

    :try_start_1
    aget-object v2, v14, v6

    invoke-virtual {v7, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 115
    :try_start_2
    iget-object v7, v12, Lvg4;->c:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v20, v6

    :try_start_3
    aget-object v6, v14, v20

    invoke-virtual {v7, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 116
    new-instance v7, Lh80;

    const/16 v10, 0xb

    invoke-direct {v7, v10, v6, v2}, Lh80;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v15, v20

    add-int/lit8 v6, v20, 0x1

    move-object/from16 v2, v19

    const/4 v10, 0x0

    goto :goto_11

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    move/from16 v20, v6

    .line 117
    :goto_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 118
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Lu81;->t(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 119
    const-string v3, "Failed to access type of field #%d (of %d) of Record type %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    :goto_13
    move/from16 v20, v6

    goto :goto_14

    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_13

    .line 120
    :goto_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 121
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Lu81;->t(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 122
    const-string v3, "Failed to access name of field #%d (of %d) of Record type %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2d
    :goto_15
    if-nez v15, :cond_2e

    goto/16 :goto_1a

    .line 123
    :cond_2e
    array-length v2, v15

    if-nez v2, :cond_2f

    .line 124
    invoke-virtual {v1}, Lhd;->p0()Lgd;

    move-result-object v6

    iget-object v6, v6, Lgd;->b:Ljava/lang/Object;

    check-cast v6, Ljd;

    if-eqz v6, :cond_2f

    .line 125
    new-instance v2, Lk36;

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Lk36;-><init>(Lud;Lej4;)V

    move-object v7, v2

    goto/16 :goto_1b

    .line 126
    :cond_2f
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk36;

    .line 127
    iget-object v10, v7, Lk36;->a:Lud;

    .line 128
    invoke-virtual {v10}, Lud;->x0()I

    move-result v12

    if-eq v12, v2, :cond_30

    goto :goto_16

    :cond_30
    const/4 v12, 0x0

    :goto_17
    if-ge v12, v2, :cond_32

    .line 129
    invoke-virtual {v10, v12}, Lud;->z0(I)Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v19, v6

    aget-object v6, v15, v12

    iget-object v6, v6, Lh80;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    move-object/from16 v6, v19

    goto :goto_16

    :cond_31
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v19

    goto :goto_17

    .line 130
    :cond_32
    new-array v6, v2, [Lz86;

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v2, :cond_33

    .line 131
    aget-object v14, v15, v12

    iget-object v14, v14, Lh80;->b:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lz86;->a(Ljava/lang/String;)Lz86;

    move-result-object v14

    aput-object v14, v6, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 132
    :cond_33
    iget-object v2, v7, Lk36;->d:[Lz86;

    if-eqz v2, :cond_34

    goto :goto_1b

    .line 133
    :cond_34
    invoke-virtual {v10}, Lud;->x0()I

    move-result v2

    if-nez v2, :cond_35

    .line 134
    sget-object v2, Lk36;->f:[Lz86;

    iput-object v2, v7, Lk36;->e:[Lz86;

    iput-object v2, v7, Lk36;->d:[Lz86;

    goto :goto_1b

    .line 135
    :cond_35
    new-array v12, v2, [Lz86;

    iput-object v12, v7, Lk36;->e:[Lz86;

    .line 136
    iput-object v6, v7, Lk36;->d:[Lz86;

    .line 137
    invoke-virtual {v5}, Ls65;->d()Las5;

    move-result-object v6

    const/4 v12, 0x0

    :goto_19
    if-ge v12, v2, :cond_3a

    .line 138
    invoke-virtual {v10, v12}, Lud;->w0(I)Ltd;

    move-result-object v14

    .line 139
    invoke-virtual {v6, v14}, Las5;->m(Lod;)Lz86;

    move-result-object v14

    if-eqz v14, :cond_36

    .line 140
    invoke-virtual {v14}, Lz86;->c()Z

    move-result v15

    if-nez v15, :cond_36

    .line 141
    iget-object v15, v7, Lk36;->e:[Lz86;

    aput-object v14, v15, v12

    :cond_36
    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    .line 142
    :cond_37
    iget-object v0, v1, Lhd;->M:Lgc8;

    .line 143
    invoke-static {v0}, Lu81;->m(Lgc8;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to find the canonical Record constructor of type "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc6;->f(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_38
    throw v12

    .line 145
    :cond_39
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1a
    const/4 v7, 0x0

    .line 146
    :cond_3a
    :goto_1b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 147
    :cond_3b
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    sget-object v10, Lej4;->b:Lej4;

    if-eqz v6, :cond_3c

    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk36;

    .line 149
    iget-object v6, v6, Lk36;->c:Lej4;

    if-ne v6, v10, :cond_3b

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    .line 151
    :cond_3c
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 152
    :cond_3d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 153
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk36;

    .line 154
    iget-object v6, v6, Lk36;->c:Lej4;

    if-ne v6, v10, :cond_3d

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1d

    .line 156
    :cond_3e
    iget-object v2, v0, Lxv5;->c:Lgc8;

    .line 157
    iget-object v2, v2, Lgc8;->f:Ljava/lang/Class;

    .line 158
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 159
    :cond_3f
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_44

    .line 160
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk36;

    .line 161
    iget-boolean v12, v10, Lk36;->b:Z

    iget-object v14, v10, Lk36;->a:Lud;

    if-eqz v12, :cond_40

    goto :goto_1e

    :cond_40
    if-ne v7, v10, :cond_41

    goto :goto_1e

    .line 162
    :cond_41
    invoke-virtual {v14}, Ljb9;->C()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 163
    invoke-virtual {v14}, Lud;->x0()I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_43

    .line 164
    invoke-virtual {v14}, Ljb9;->B()Ljava/lang/String;

    move-result-object v10

    .line 165
    const-string v12, "valueOf"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_42

    goto :goto_1e

    .line 166
    :cond_42
    const-string v12, "fromString"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    const/4 v10, 0x0

    .line 167
    invoke-virtual {v14, v10}, Lud;->z0(I)Ljava/lang/Class;

    move-result-object v12

    .line 168
    const-class v10, Ljava/lang/String;

    if-eq v12, v10, :cond_3f

    const-class v10, Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_43

    goto :goto_1e

    .line 169
    :cond_43
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1e

    .line 170
    :cond_44
    iget-boolean v2, v0, Lxv5;->g:Z

    if-eqz v2, :cond_46

    const/4 v10, 0x0

    .line 171
    invoke-virtual {v0, v4, v8, v3, v10}, Lxv5;->a(Lf41;Ljava/util/List;Ljava/util/LinkedHashMap;Z)V

    .line 172
    iget-object v2, v4, Lf41;->a:Ljava/lang/Object;

    check-cast v2, Lk36;

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    goto :goto_1f

    :cond_45
    const/4 v2, 0x0

    .line 173
    :goto_1f
    invoke-virtual {v0, v4, v11, v3, v2}, Lxv5;->a(Lf41;Ljava/util/List;Ljava/util/LinkedHashMap;Z)V

    .line 174
    :cond_46
    iget-object v2, v4, Lf41;->a:Ljava/lang/Object;

    check-cast v2, Lk36;

    .line 175
    const-string v6, "implicit"

    if-eqz v2, :cond_47

    goto :goto_23

    .line 176
    :cond_47
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    .line 177
    :cond_48
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4b

    .line 178
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk36;

    .line 179
    invoke-virtual {v12, v5}, Lk36;->b(Ls65;)V

    .line 180
    iget-object v14, v12, Lk36;->e:[Lz86;

    array-length v14, v14

    const/4 v15, 0x0

    :goto_21
    if-ge v15, v14, :cond_48

    move-object/from16 v19, v2

    .line 181
    iget-object v2, v12, Lk36;->e:[Lz86;

    aget-object v2, v2, v15

    if-eqz v2, :cond_4a

    .line 182
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    if-nez v10, :cond_49

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v2

    .line 184
    :cond_49
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v19

    goto :goto_20

    :cond_4a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v19

    goto :goto_21

    :cond_4b
    if-nez v10, :cond_4c

    .line 185
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_4c
    if-eqz v7, :cond_4d

    .line 186
    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 187
    invoke-virtual {v4, v5, v7, v6}, Lf41;->e(Ls65;Lk36;Ljava/lang/String;)V

    goto :goto_23

    .line 188
    :cond_4d
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk36;

    .line 189
    invoke-virtual {v4, v5, v10, v6}, Lf41;->e(Ls65;Lk36;Ljava/lang/String;)V

    goto :goto_22

    :cond_4e
    :goto_23
    if-eqz v7, :cond_55

    .line 190
    invoke-interface {v8, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 191
    invoke-interface {v11, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 192
    :cond_4f
    iget-object v2, v7, Lk36;->c:Lej4;

    .line 193
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_52

    const/4 v10, 0x2

    if-eq v2, v10, :cond_50

    const/4 v10, 0x3

    if-eq v2, v10, :cond_50

    .line 194
    iget-object v2, v7, Lk36;->a:Lud;

    invoke-virtual {v2}, Lud;->x0()I

    move-result v2

    if-ne v2, v12, :cond_50

    .line 195
    iget-object v2, v0, Lxv5;->r:Ljava/util/LinkedList;

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_24

    .line 196
    :cond_50
    iget-object v2, v4, Lf41;->a:Ljava/lang/Object;

    check-cast v2, Lk36;

    if-eqz v2, :cond_51

    goto :goto_25

    .line 197
    :cond_51
    const-string v2, "Primary"

    invoke-virtual {v4, v5, v7, v2}, Lf41;->e(Ls65;Lk36;Ljava/lang/String;)V

    goto :goto_25

    .line 198
    :cond_52
    :goto_24
    iget-object v2, v4, Lf41;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_53

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_25

    .line 199
    :cond_53
    iget-object v2, v4, Lf41;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_54

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v4, Lf41;->b:Ljava/lang/Object;

    .line 201
    :cond_54
    iget-object v2, v4, Lf41;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_55
    :goto_25
    iget-object v2, v4, Lf41;->a:Ljava/lang/Object;

    check-cast v2, Lk36;

    if-nez v2, :cond_5f

    iget-object v2, v4, Lf41;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_56

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_56

    goto/16 :goto_28

    .line 203
    :cond_56
    invoke-virtual {v1}, Lhd;->p0()Lgd;

    move-result-object v2

    .line 204
    iget-object v2, v2, Lgd;->b:Ljava/lang/Object;

    check-cast v2, Ljd;

    if-eqz v2, :cond_57

    goto/16 :goto_28

    .line 205
    :cond_57
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_58

    goto :goto_28

    :cond_58
    const/4 v10, 0x0

    .line 206
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk36;

    .line 207
    iget-object v7, v2, Lk36;->a:Lud;

    .line 208
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    invoke-virtual {v7}, Lod;->r0()Ljava/lang/reflect/Member;

    move-result-object v10

    .line 210
    iget-object v12, v9, Lnn8;->d:Lyi4;

    invoke-virtual {v12, v10}, Lyi4;->a(Ljava/lang/reflect/Member;)Z

    move-result v10

    if-nez v10, :cond_59

    goto :goto_28

    .line 211
    :cond_59
    invoke-virtual {v2, v5}, Lk36;->b(Ls65;)V

    .line 212
    invoke-virtual {v7}, Lud;->x0()I

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_5b

    .line 213
    invoke-virtual {v2, v5}, Lk36;->a(Lv77;)Z

    move-result v7

    if-nez v7, :cond_5a

    goto :goto_28

    :cond_5a
    const/4 v10, 0x0

    goto :goto_27

    :cond_5b
    const/4 v10, 0x0

    if-eqz v13, :cond_5c

    .line 214
    invoke-virtual {v7, v10}, Lud;->w0(I)Ltd;

    move-result-object v7

    .line 215
    invoke-virtual {v13, v7}, Las5;->i(Lod;)Lbh4;

    move-result-object v7

    if-eqz v7, :cond_5c

    goto :goto_27

    .line 216
    :cond_5c
    iget-object v7, v2, Lk36;->d:[Lz86;

    aget-object v7, v7, v10

    if-nez v7, :cond_5d

    const/4 v7, 0x0

    goto :goto_26

    .line 217
    :cond_5d
    iget-object v7, v7, Lz86;->a:Ljava/lang/String;

    :goto_26
    if-nez v7, :cond_5e

    goto :goto_28

    .line 218
    :cond_5e
    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Law5;

    if-eqz v7, :cond_5f

    .line 219
    invoke-virtual {v7}, Law5;->L()Z

    move-result v10

    if-eqz v10, :cond_5f

    invoke-virtual {v7}, Law5;->K()Z

    move-result v7

    if-eqz v7, :cond_5a

    goto :goto_28

    .line 220
    :goto_27
    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 221
    invoke-virtual {v4, v5, v2, v6}, Lf41;->e(Ls65;Lk36;Ljava/lang/String;)V

    .line 222
    :cond_5f
    :goto_28
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 223
    :cond_60
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 224
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk36;

    .line 225
    iget-object v6, v6, Lk36;->a:Lud;

    .line 226
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    invoke-virtual {v6}, Lod;->r0()Ljava/lang/reflect/Member;

    move-result-object v6

    .line 228
    iget-object v7, v9, Lnn8;->d:Lyi4;

    invoke-virtual {v7, v6}, Lyi4;->a(Ljava/lang/reflect/Member;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 229
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_29

    .line 230
    :cond_61
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 231
    :cond_62
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk36;

    .line 233
    iget-object v6, v6, Lk36;->a:Lud;

    .line 234
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    invoke-virtual {v6}, Lod;->r0()Ljava/lang/reflect/Member;

    move-result-object v6

    .line 236
    iget-object v7, v9, Lnn8;->d:Lyi4;

    invoke-virtual {v7, v6}, Lyi4;->a(Ljava/lang/reflect/Member;)Z

    move-result v6

    if-nez v6, :cond_62

    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2a

    .line 238
    :cond_63
    iput-object v8, v4, Lf41;->c:Ljava/lang/Object;

    .line 239
    iput-object v11, v4, Lf41;->d:Ljava/lang/Object;

    .line 240
    iget-object v2, v4, Lf41;->a:Ljava/lang/Object;

    check-cast v2, Lk36;

    if-nez v2, :cond_64

    .line 241
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, v0, Lxv5;->k:Ljava/util/List;

    goto/16 :goto_30

    .line 242
    :cond_64
    iget-object v4, v2, Lk36;->a:Lud;

    .line 243
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lxv5;->k:Ljava/util/List;

    .line 244
    invoke-virtual {v4}, Lud;->x0()I

    move-result v7

    const/4 v8, 0x0

    :goto_2b
    if-ge v8, v7, :cond_6b

    .line 245
    invoke-virtual {v4, v8}, Lud;->w0(I)Ltd;

    move-result-object v9

    .line 246
    iget-object v10, v2, Lk36;->e:[Lz86;

    aget-object v10, v10, v8

    .line 247
    iget-object v11, v2, Lk36;->d:[Lz86;

    aget-object v11, v11, v8

    if-eqz v10, :cond_65

    const/16 v28, 0x1

    goto :goto_2c

    :cond_65
    const/16 v28, 0x0

    :goto_2c
    if-nez v28, :cond_67

    if-nez v11, :cond_67

    .line 248
    invoke-virtual {v13, v9}, Las5;->P(Lod;)Lfk5;

    move-result-object v10

    if-eqz v10, :cond_66

    .line 249
    iget v10, v9, Ltd;->Q:I

    .line 250
    new-instance v11, Lz86;

    const-string v12, "@JsonUnwrapped/"

    .line 251
    invoke-static {v10, v12}, Lfz5;->j(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    .line 252
    invoke-direct {v11, v10, v12}, Lz86;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v3, v11}, Lxv5;->f(Ljava/util/LinkedHashMap;Lz86;)Law5;

    move-result-object v10

    .line 254
    new-instance v24, Lyv5;

    iget-object v12, v10, Law5;->n:Lyv5;

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v25, v9

    move-object/from16 v27, v11

    move-object/from16 v26, v12

    invoke-direct/range {v24 .. v30}, Lyv5;-><init>(Ljava/lang/Object;Lyv5;Lz86;ZZZ)V

    move-object/from16 v9, v24

    iput-object v9, v10, Law5;->n:Lyv5;

    goto :goto_2f

    :cond_66
    const/4 v10, 0x0

    goto :goto_2f

    :cond_67
    move-object/from16 v25, v9

    if-eqz v11, :cond_68

    .line 255
    iget-object v9, v11, Lz86;->a:Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v9}, Lxv5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 257
    invoke-static {v9}, Lz86;->a(Ljava/lang/String;)Lz86;

    move-result-object v11

    :cond_68
    if-nez v11, :cond_69

    .line 258
    invoke-virtual {v0, v3, v10}, Lxv5;->f(Ljava/util/LinkedHashMap;Lz86;)Law5;

    move-result-object v9

    goto :goto_2d

    :cond_69
    invoke-virtual {v0, v3, v11}, Lxv5;->f(Ljava/util/LinkedHashMap;Lz86;)Law5;

    move-result-object v9

    :goto_2d
    if-eqz v28, :cond_6a

    move-object/from16 v27, v10

    goto :goto_2e

    :cond_6a
    move-object/from16 v27, v11

    .line 259
    :goto_2e
    new-instance v24, Lyv5;

    iget-object v10, v9, Law5;->n:Lyv5;

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v26, v10

    invoke-direct/range {v24 .. v30}, Lyv5;-><init>(Ljava/lang/Object;Lyv5;Lz86;ZZZ)V

    move-object/from16 v10, v24

    iput-object v10, v9, Law5;->n:Lyv5;

    move-object v10, v9

    .line 260
    :goto_2f
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2b

    .line 261
    :cond_6b
    :goto_30
    sget-object v2, Lu65;->S:Lu65;

    invoke-virtual {v5, v2}, Ls65;->i(Lu65;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 262
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_6c
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 263
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Law5;

    .line 264
    iget-object v8, v7, Law5;->k:Lyv5;

    if-eqz v8, :cond_6c

    .line 265
    iget-object v8, v7, Law5;->p:Lyv5;

    if-nez v8, :cond_6c

    iget-object v8, v7, Law5;->q:Lyv5;

    if-nez v8, :cond_6c

    iget-object v8, v7, Law5;->n:Lyv5;

    if-nez v8, :cond_6c

    .line 266
    iget-object v8, v7, Law5;->k:Lyv5;

    invoke-static {v8}, Law5;->t(Lyv5;)Z

    move-result v8

    if-nez v8, :cond_6e

    iget-object v8, v7, Law5;->p:Lyv5;

    .line 267
    invoke-static {v8}, Law5;->t(Lyv5;)Z

    move-result v8

    if-nez v8, :cond_6e

    iget-object v8, v7, Law5;->q:Lyv5;

    .line 268
    invoke-static {v8}, Law5;->t(Lyv5;)Z

    move-result v8

    if-nez v8, :cond_6e

    iget-object v8, v7, Law5;->n:Lyv5;

    .line 269
    invoke-static {v8}, Law5;->t(Lyv5;)Z

    move-result v8

    if-eqz v8, :cond_6d

    goto :goto_32

    :cond_6d
    const/4 v8, 0x0

    goto :goto_33

    :cond_6e
    :goto_32
    const/4 v8, 0x1

    :goto_33
    if-eqz v8, :cond_6f

    goto :goto_31

    .line 270
    :cond_6f
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 271
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_6c

    const/4 v12, 0x1

    if-eq v9, v12, :cond_70

    .line 272
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v9

    if-nez v9, :cond_70

    goto :goto_34

    :cond_70
    const/4 v10, 0x0

    .line 273
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-nez v8, :cond_6c

    :goto_34
    if-nez v4, :cond_71

    .line 274
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 275
    :cond_71
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_72
    if-nez v4, :cond_73

    goto :goto_38

    .line 276
    :cond_73
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_74
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 277
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 278
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Law5;

    .line 279
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 280
    :cond_75
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_74

    .line 281
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Law5;

    if-eq v9, v7, :cond_75

    .line 283
    iget-object v10, v9, Law5;->k:Lyv5;

    if-eqz v10, :cond_76

    const/4 v10, 0x1

    goto :goto_37

    :cond_76
    const/4 v10, 0x0

    :goto_37
    if-eqz v10, :cond_77

    goto :goto_36

    .line 284
    :cond_77
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 285
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 286
    invoke-virtual {v7, v9}, Law5;->J(Law5;)V

    goto :goto_35

    .line 287
    :cond_78
    :goto_38
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 288
    :cond_79
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 289
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Law5;

    .line 290
    invoke-virtual {v4}, Law5;->L()Z

    move-result v6

    if-nez v6, :cond_7a

    .line 291
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_39

    .line 292
    :cond_7a
    invoke-virtual {v4}, Law5;->K()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 293
    iget-object v6, v4, Law5;->k:Lyv5;

    invoke-static {v6}, Law5;->w(Lyv5;)Z

    move-result v6

    if-nez v6, :cond_7d

    iget-object v6, v4, Law5;->p:Lyv5;

    .line 294
    invoke-static {v6}, Law5;->w(Lyv5;)Z

    move-result v6

    if-nez v6, :cond_7d

    iget-object v6, v4, Law5;->q:Lyv5;

    .line 295
    invoke-static {v6}, Law5;->w(Lyv5;)Z

    move-result v6

    if-nez v6, :cond_7d

    iget-object v6, v4, Law5;->n:Lyv5;

    :goto_3a
    if-eqz v6, :cond_7c

    .line 296
    iget-boolean v7, v6, Lyv5;->f:Z

    if-nez v7, :cond_7b

    iget-object v7, v6, Lyv5;->c:Lz86;

    if-eqz v7, :cond_7b

    iget-boolean v7, v6, Lyv5;->d:Z

    if-eqz v7, :cond_7b

    goto :goto_3b

    .line 297
    :cond_7b
    iget-object v6, v6, Lyv5;->b:Lyv5;

    goto :goto_3a

    .line 298
    :cond_7c
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 299
    invoke-virtual {v4}, Law5;->j()Ljava/lang/String;

    goto :goto_39

    .line 300
    :cond_7d
    :goto_3b
    iget-object v6, v4, Law5;->k:Lyv5;

    if-nez v6, :cond_7e

    goto :goto_3c

    .line 301
    :cond_7e
    invoke-virtual {v6}, Lyv5;->d()Lyv5;

    move-result-object v6

    .line 302
    :goto_3c
    iput-object v6, v4, Law5;->k:Lyv5;

    .line 303
    iget-object v6, v4, Law5;->p:Lyv5;

    if-nez v6, :cond_7f

    goto :goto_3d

    .line 304
    :cond_7f
    invoke-virtual {v6}, Lyv5;->d()Lyv5;

    move-result-object v6

    .line 305
    :goto_3d
    iput-object v6, v4, Law5;->p:Lyv5;

    .line 306
    iget-object v6, v4, Law5;->q:Lyv5;

    if-nez v6, :cond_80

    goto :goto_3e

    .line 307
    :cond_80
    invoke-virtual {v6}, Lyv5;->d()Lyv5;

    move-result-object v6

    .line 308
    :goto_3e
    iput-object v6, v4, Law5;->q:Lyv5;

    .line 309
    iget-object v6, v4, Law5;->n:Lyv5;

    if-nez v6, :cond_81

    goto :goto_3f

    .line 310
    :cond_81
    invoke-virtual {v6}, Lyv5;->d()Lyv5;

    move-result-object v6

    .line 311
    :goto_3f
    iput-object v6, v4, Law5;->n:Lyv5;

    .line 312
    invoke-virtual {v4}, Law5;->a()Z

    move-result v6

    if-nez v6, :cond_79

    .line 313
    invoke-virtual {v4}, Law5;->j()Ljava/lang/String;

    goto/16 :goto_39

    .line 314
    :cond_82
    sget-object v2, Lu65;->r:Lu65;

    invoke-virtual {v5, v2}, Ls65;->i(Lu65;)Z

    move-result v2

    .line 315
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 316
    :cond_83
    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97

    .line 317
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Law5;

    .line 318
    iget-boolean v7, v6, Law5;->b:Z

    .line 319
    iget-object v8, v6, Law5;->d:Las5;

    sget-object v9, Lml4;->a:Lml4;

    if-nez v8, :cond_85

    :cond_84
    const/4 v10, 0x0

    goto/16 :goto_42

    :cond_85
    if-eqz v7, :cond_89

    .line 320
    iget-object v10, v6, Law5;->p:Lyv5;

    if-eqz v10, :cond_86

    .line 321
    iget-object v10, v10, Lyv5;->a:Ljava/lang/Object;

    check-cast v10, Lod;

    .line 322
    invoke-virtual {v8, v10}, Las5;->s(Ljb9;)Lml4;

    move-result-object v10

    if-eqz v10, :cond_86

    if-eq v10, v9, :cond_86

    goto/16 :goto_42

    .line 323
    :cond_86
    iget-object v10, v6, Law5;->k:Lyv5;

    if-eqz v10, :cond_87

    .line 324
    iget-object v10, v10, Lyv5;->a:Ljava/lang/Object;

    check-cast v10, Lod;

    .line 325
    invoke-virtual {v8, v10}, Las5;->s(Ljb9;)Lml4;

    move-result-object v10

    if-eqz v10, :cond_87

    if-eq v10, v9, :cond_87

    goto/16 :goto_42

    .line 326
    :cond_87
    iget-object v10, v6, Law5;->n:Lyv5;

    if-eqz v10, :cond_88

    .line 327
    iget-object v10, v10, Lyv5;->a:Ljava/lang/Object;

    check-cast v10, Lod;

    .line 328
    invoke-virtual {v8, v10}, Las5;->s(Ljb9;)Lml4;

    move-result-object v10

    if-eqz v10, :cond_88

    if-eq v10, v9, :cond_88

    goto :goto_42

    .line 329
    :cond_88
    iget-object v10, v6, Law5;->q:Lyv5;

    if-eqz v10, :cond_84

    .line 330
    iget-object v10, v10, Lyv5;->a:Ljava/lang/Object;

    check-cast v10, Lod;

    .line 331
    invoke-virtual {v8, v10}, Las5;->s(Ljb9;)Lml4;

    move-result-object v8

    if-eqz v8, :cond_84

    if-eq v8, v9, :cond_84

    :goto_41
    move-object v10, v8

    goto :goto_42

    .line 332
    :cond_89
    iget-object v10, v6, Law5;->n:Lyv5;

    if-eqz v10, :cond_8a

    .line 333
    iget-object v10, v10, Lyv5;->a:Ljava/lang/Object;

    check-cast v10, Lod;

    .line 334
    invoke-virtual {v8, v10}, Las5;->s(Ljb9;)Lml4;

    move-result-object v10

    if-eqz v10, :cond_8a

    if-eq v10, v9, :cond_8a

    goto :goto_42

    .line 335
    :cond_8a
    iget-object v10, v6, Law5;->q:Lyv5;

    if-eqz v10, :cond_8b

    .line 336
    iget-object v10, v10, Lyv5;->a:Ljava/lang/Object;

    check-cast v10, Lod;

    .line 337
    invoke-virtual {v8, v10}, Las5;->s(Ljb9;)Lml4;

    move-result-object v10

    if-eqz v10, :cond_8b

    if-eq v10, v9, :cond_8b

    goto :goto_42

    .line 338
    :cond_8b
    iget-object v10, v6, Law5;->k:Lyv5;

    if-eqz v10, :cond_8c

    .line 339
    iget-object v10, v10, Lyv5;->a:Ljava/lang/Object;

    check-cast v10, Lod;

    .line 340
    invoke-virtual {v8, v10}, Las5;->s(Ljb9;)Lml4;

    move-result-object v10

    if-eqz v10, :cond_8c

    if-eq v10, v9, :cond_8c

    goto :goto_42

    .line 341
    :cond_8c
    iget-object v10, v6, Law5;->p:Lyv5;

    if-eqz v10, :cond_84

    .line 342
    iget-object v10, v10, Lyv5;->a:Ljava/lang/Object;

    check-cast v10, Lod;

    .line 343
    invoke-virtual {v8, v10}, Las5;->s(Ljb9;)Lml4;

    move-result-object v8

    if-eqz v8, :cond_84

    if-eq v8, v9, :cond_84

    goto :goto_41

    .line 344
    :goto_42
    iget-object v8, v6, Law5;->c:Ls65;

    sget-object v11, Lu65;->I:Lu65;

    invoke-virtual {v8, v11}, Ls65;->i(Lu65;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 345
    sget-object v8, Lml4;->c:Lml4;

    sget-object v11, Lml4;->b:Lml4;

    if-ne v10, v11, :cond_8d

    move-object v10, v8

    goto :goto_43

    :cond_8d
    if-ne v10, v8, :cond_8e

    move-object v10, v11

    :cond_8e
    :goto_43
    if-nez v10, :cond_8f

    goto :goto_44

    :cond_8f
    move-object v9, v10

    .line 346
    :goto_44
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_96

    const/4 v10, 0x2

    if-eq v8, v10, :cond_95

    const/4 v9, 0x3

    if-eq v8, v9, :cond_83

    .line 347
    iget-object v7, v6, Law5;->p:Lyv5;

    if-nez v7, :cond_90

    goto :goto_45

    .line 348
    :cond_90
    invoke-virtual {v7}, Lyv5;->f()Lyv5;

    move-result-object v7

    .line 349
    :goto_45
    iput-object v7, v6, Law5;->p:Lyv5;

    .line 350
    iget-object v7, v6, Law5;->n:Lyv5;

    if-nez v7, :cond_91

    goto :goto_46

    .line 351
    :cond_91
    invoke-virtual {v7}, Lyv5;->f()Lyv5;

    move-result-object v7

    .line 352
    :goto_46
    iput-object v7, v6, Law5;->n:Lyv5;

    if-eqz v2, :cond_92

    .line 353
    iget-object v7, v6, Law5;->p:Lyv5;

    if-nez v7, :cond_83

    .line 354
    :cond_92
    iget-object v7, v6, Law5;->k:Lyv5;

    if-nez v7, :cond_93

    goto :goto_47

    .line 355
    :cond_93
    invoke-virtual {v7}, Lyv5;->f()Lyv5;

    move-result-object v7

    .line 356
    :goto_47
    iput-object v7, v6, Law5;->k:Lyv5;

    .line 357
    iget-object v7, v6, Law5;->q:Lyv5;

    if-nez v7, :cond_94

    goto :goto_48

    .line 358
    :cond_94
    invoke-virtual {v7}, Lyv5;->f()Lyv5;

    move-result-object v7

    .line 359
    :goto_48
    iput-object v7, v6, Law5;->q:Lyv5;

    goto/16 :goto_40

    :cond_95
    const/4 v9, 0x3

    const/4 v12, 0x0

    .line 360
    iput-object v12, v6, Law5;->p:Lyv5;

    if-eqz v7, :cond_83

    .line 361
    iput-object v12, v6, Law5;->k:Lyv5;

    goto/16 :goto_40

    :cond_96
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x0

    .line 362
    iput-object v12, v6, Law5;->q:Lyv5;

    .line 363
    iput-object v12, v6, Law5;->n:Lyv5;

    if-nez v7, :cond_83

    .line 364
    iput-object v12, v6, Law5;->k:Lyv5;

    goto/16 :goto_40

    .line 365
    :cond_97
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    .line 366
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 367
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Law5;

    .line 369
    iget-object v6, v4, Law5;->k:Lyv5;

    const/4 v12, 0x0

    .line 370
    invoke-static {v6, v12}, Law5;->C(Lyv5;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 371
    iget-object v8, v4, Law5;->p:Lyv5;

    invoke-static {v8, v6}, Law5;->C(Lyv5;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 372
    iget-object v8, v4, Law5;->q:Lyv5;

    invoke-static {v8, v6}, Law5;->C(Lyv5;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 373
    iget-object v8, v4, Law5;->n:Lyv5;

    invoke-static {v8, v6}, Law5;->C(Lyv5;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_98

    .line 374
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 375
    :cond_98
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_99

    goto :goto_49

    .line 376
    :cond_99
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    if-nez v7, :cond_9a

    .line 377
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 378
    :cond_9a
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_9b

    .line 379
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz86;

    .line 380
    new-instance v8, Law5;

    invoke-direct {v8, v4, v6}, Law5;-><init>(Law5;Lz86;)V

    .line 381
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 382
    :cond_9b
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 383
    iget-object v9, v4, Law5;->k:Lyv5;

    invoke-virtual {v4, v6, v8, v9}, Law5;->B(Ljava/util/Set;Ljava/util/HashMap;Lyv5;)V

    .line 384
    iget-object v9, v4, Law5;->p:Lyv5;

    invoke-virtual {v4, v6, v8, v9}, Law5;->B(Ljava/util/Set;Ljava/util/HashMap;Lyv5;)V

    .line 385
    iget-object v9, v4, Law5;->q:Lyv5;

    invoke-virtual {v4, v6, v8, v9}, Law5;->B(Ljava/util/Set;Ljava/util/HashMap;Lyv5;)V

    .line 386
    iget-object v9, v4, Law5;->n:Lyv5;

    invoke-virtual {v4, v6, v8, v9}, Law5;->B(Ljava/util/Set;Ljava/util/HashMap;Lyv5;)V

    .line 387
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 388
    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_49

    :cond_9c
    if-eqz v7, :cond_a0

    .line 389
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9d
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Law5;

    .line 390
    invoke-virtual {v4}, Law5;->j()Ljava/lang/String;

    move-result-object v6

    .line 391
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Law5;

    if-nez v7, :cond_9e

    .line 392
    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 393
    :cond_9e
    invoke-virtual {v7, v4}, Law5;->J(Law5;)V

    .line 394
    :goto_4b
    iget-object v6, v0, Lxv5;->k:Ljava/util/List;

    .line 395
    invoke-virtual {v4}, Law5;->f()Ltd;

    move-result-object v7

    if-eqz v6, :cond_9d

    if-eqz v7, :cond_9d

    .line 396
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_4c
    if-ge v10, v8, :cond_9d

    .line 397
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Law5;

    if-eqz v9, :cond_9f

    .line 398
    invoke-virtual {v9}, Law5;->f()Ltd;

    move-result-object v9

    if-ne v9, v7, :cond_9f

    .line 399
    invoke-interface {v6, v10, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_9f
    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    .line 400
    :cond_a0
    invoke-virtual {v1}, Lhd;->q0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lld;

    .line 401
    invoke-virtual {v13, v4}, Las5;->i(Lod;)Lbh4;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lxv5;->d(Lbh4;Lod;)V

    goto :goto_4d

    .line 402
    :cond_a1
    invoke-virtual {v1}, Lhd;->r0()Lsd;

    move-result-object v2

    invoke-virtual {v2}, Lsd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpd;

    .line 403
    iget-object v6, v4, Lpd;->P:Ljava/lang/reflect/Method;

    .line 404
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v6

    const/4 v12, 0x1

    if-eq v6, v12, :cond_a2

    goto :goto_4e

    .line 405
    :cond_a2
    invoke-virtual {v13, v4}, Las5;->i(Lod;)Lbh4;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lxv5;->d(Lbh4;Lod;)V

    goto :goto_4e

    .line 406
    :cond_a3
    iget-object v2, v0, Lxv5;->s:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_a6

    .line 407
    iget-object v2, v0, Lxv5;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a4
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Law5;

    if-nez v4, :cond_a5

    goto :goto_4f

    .line 408
    :cond_a5
    invoke-virtual {v4}, Law5;->f()Ltd;

    move-result-object v4

    .line 409
    invoke-virtual {v13, v4}, Las5;->i(Lod;)Lbh4;

    move-result-object v4

    if-eqz v4, :cond_a4

    .line 410
    iget-object v6, v0, Lxv5;->s:Ljava/util/LinkedHashMap;

    .line 411
    iget-object v4, v4, Lbh4;->a:Ljava/lang/Object;

    .line 412
    invoke-virtual {v6, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 413
    :cond_a6
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a7
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Law5;

    .line 414
    iget-object v6, v4, Law5;->p:Lyv5;

    .line 415
    iget-object v7, v4, Law5;->k:Lyv5;

    if-eqz v6, :cond_a8

    .line 416
    iget-object v8, v4, Law5;->n:Lyv5;

    iget-object v9, v4, Law5;->q:Lyv5;

    filled-new-array {v6, v7, v8, v9}, [Lyv5;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v10, v6}, Law5;->H(I[Lyv5;)Ls79;

    move-result-object v6

    .line 417
    iget-object v7, v4, Law5;->p:Lyv5;

    invoke-static {v7, v6}, Law5;->A(Lyv5;Ls79;)Lyv5;

    move-result-object v6

    iput-object v6, v4, Law5;->p:Lyv5;

    goto :goto_50

    :cond_a8
    const/4 v10, 0x0

    if-eqz v7, :cond_a7

    .line 418
    iget-object v6, v4, Law5;->n:Lyv5;

    iget-object v8, v4, Law5;->q:Lyv5;

    filled-new-array {v7, v6, v8}, [Lyv5;

    move-result-object v6

    invoke-static {v10, v6}, Law5;->H(I[Lyv5;)Ls79;

    move-result-object v6

    .line 419
    iget-object v7, v4, Law5;->k:Lyv5;

    invoke-static {v7, v6}, Law5;->A(Lyv5;Ls79;)Lyv5;

    move-result-object v6

    iput-object v6, v4, Law5;->k:Lyv5;

    goto :goto_50

    .line 420
    :cond_a9
    invoke-virtual {v13, v1}, Las5;->o(Lhd;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_aa

    .line 421
    iget-object v1, v5, Ls65;->b:Len0;

    .line 422
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_51

    .line 423
    :cond_aa
    check-cast v1, Ljava/lang/Class;

    .line 424
    const-class v2, La96;

    if-ne v1, v2, :cond_ab

    goto :goto_51

    .line 425
    :cond_ab
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 426
    invoke-virtual {v5}, Ls65;->g()V

    .line 427
    sget-object v2, Lu65;->G:Lu65;

    invoke-virtual {v5, v2}, Ls65;->i(Lu65;)Z

    move-result v2

    .line 428
    invoke-static {v1, v2}, Lu81;->f(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lxs1;->r(Ljava/lang/Object;)V

    .line 429
    :goto_51
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Law5;

    .line 430
    iget-object v4, v2, Law5;->k:Lyv5;

    if-nez v4, :cond_ac

    goto :goto_53

    .line 431
    :cond_ac
    invoke-virtual {v4}, Lyv5;->b()Lyv5;

    move-result-object v4

    .line 432
    :goto_53
    iput-object v4, v2, Law5;->k:Lyv5;

    .line 433
    iget-object v4, v2, Law5;->p:Lyv5;

    if-nez v4, :cond_ad

    goto :goto_54

    .line 434
    :cond_ad
    invoke-virtual {v4}, Lyv5;->b()Lyv5;

    move-result-object v4

    .line 435
    :goto_54
    iput-object v4, v2, Law5;->p:Lyv5;

    .line 436
    iget-object v4, v2, Law5;->q:Lyv5;

    if-nez v4, :cond_ae

    goto :goto_55

    .line 437
    :cond_ae
    invoke-virtual {v4}, Lyv5;->b()Lyv5;

    move-result-object v4

    .line 438
    :goto_55
    iput-object v4, v2, Law5;->q:Lyv5;

    .line 439
    iget-object v4, v2, Law5;->n:Lyv5;

    if-nez v4, :cond_af

    goto :goto_56

    .line 440
    :cond_af
    invoke-virtual {v4}, Lyv5;->b()Lyv5;

    move-result-object v4

    .line 441
    :goto_56
    iput-object v4, v2, Law5;->n:Lyv5;

    goto :goto_52

    .line 442
    :cond_b0
    sget-object v1, Lu65;->Q:Lu65;

    invoke-virtual {v5, v1}, Ls65;->i(Lu65;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 443
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 444
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 445
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Law5;

    .line 447
    invoke-virtual {v2}, Law5;->N()Lod;

    goto :goto_57

    .line 448
    :cond_b1
    invoke-virtual {v0, v3}, Lxv5;->h(Ljava/util/LinkedHashMap;)V

    .line 449
    iput-object v3, v0, Lxv5;->j:Ljava/util/LinkedHashMap;

    const/4 v12, 0x1

    .line 450
    iput-boolean v12, v0, Lxv5;->i:Z

    return-void

    .line 451
    :cond_b2
    invoke-static {v1}, Lu81;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 452
    const-string v2, "AnnotationIntrospector returned Class %s; expected `Class<PropertyNamingStrategy>`"

    invoke-virtual {v0, v2, v1}, Lxv5;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v21, 0x0

    throw v21
.end method

.method public final varargs j(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Problem with definition of "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lxv5;->d:Lhd;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, ": "

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method
