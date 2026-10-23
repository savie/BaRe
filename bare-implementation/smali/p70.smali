.class public final Lp70;
.super Ltn7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# instance fields
.field public final c:Lgc8;

.field public final d:Lkp0;

.field public final e:Lrc8;

.field public final f:Lem4;

.field public final k:Lfk5;

.field public transient n:Lod2;

.field public final p:Ljava/lang/Object;

.field public final q:Z


# direct methods
.method public constructor <init>(Lmh6;Lrc8;Lem4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ltn7;-><init>(Lgc8;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lmh6;->G:Lgc8;

    .line 5
    .line 6
    iput-object p1, p0, Lp70;->c:Lgc8;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lp70;->d:Lkp0;

    .line 10
    .line 11
    iput-object p2, p0, Lp70;->e:Lrc8;

    .line 12
    .line 13
    iput-object p3, p0, Lp70;->f:Lem4;

    .line 14
    .line 15
    iput-object p1, p0, Lp70;->k:Lfk5;

    .line 16
    .line 17
    iput-object p1, p0, Lp70;->p:Ljava/lang/Object;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lp70;->q:Z

    .line 21
    .line 22
    sget-object p1, Lf96;->i:Lf96;

    .line 23
    .line 24
    iput-object p1, p0, Lp70;->n:Lod2;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lp70;Lkp0;Lrc8;Lem4;Lfk5;Ljava/lang/Object;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Ltn7;-><init>(Ltn7;)V

    .line 28
    iget-object p1, p1, Lp70;->c:Lgc8;

    iput-object p1, p0, Lp70;->c:Lgc8;

    .line 29
    sget-object p1, Lf96;->i:Lf96;

    iput-object p1, p0, Lp70;->n:Lod2;

    .line 30
    iput-object p2, p0, Lp70;->d:Lkp0;

    .line 31
    iput-object p3, p0, Lp70;->e:Lrc8;

    .line 32
    iput-object p4, p0, Lp70;->f:Lem4;

    .line 33
    iput-object p5, p0, Lp70;->k:Lfk5;

    .line 34
    iput-object p6, p0, Lp70;->p:Ljava/lang/Object;

    .line 35
    iput-boolean p7, p0, Lp70;->q:Z

    return-void
.end method


# virtual methods
.method public final a(Lc87;Lkp0;)Lem4;
    .locals 14

    .line 1
    move-object/from16 v2, p2

    .line 2
    .line 3
    iget-object v9, p1, Lc87;->a:Lv77;

    .line 4
    .line 5
    iget-object v0, p0, Lp70;->e:Lrc8;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lrc8;->a(Lkp0;)Lrc8;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v3, v0

    .line 15
    :goto_0
    const/4 v10, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v2}, Lkp0;->a()Lod;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v9}, Ls65;->d()Las5;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Las5;->c(Ljb9;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v4, v5}, Lc87;->E(Ljb9;Ljava/lang/Object;)Lem4;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v4, v10

    .line 40
    :goto_1
    const/4 v11, 0x0

    .line 41
    iget-object v5, p0, Lp70;->f:Lem4;

    .line 42
    .line 43
    iget-object v12, p0, Lp70;->c:Lgc8;

    .line 44
    .line 45
    const/4 v13, 0x1

    .line 46
    if-nez v4, :cond_9

    .line 47
    .line 48
    if-nez v5, :cond_8

    .line 49
    .line 50
    invoke-virtual {v12}, Lgc8;->z0()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    :goto_2
    move v4, v11

    .line 57
    goto :goto_4

    .line 58
    :cond_2
    iget-object v4, v12, Lgc8;->f:Ljava/lang/Class;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    :goto_3
    move v4, v13

    .line 71
    goto :goto_4

    .line 72
    :cond_3
    iget-boolean v4, v12, Lgc8;->q:Z

    .line 73
    .line 74
    if-eqz v4, :cond_4

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    invoke-virtual {v9}, Ls65;->d()Las5;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-interface {v2}, Lkp0;->a()Lod;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-eqz v6, :cond_6

    .line 88
    .line 89
    invoke-interface {v2}, Lkp0;->a()Lod;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v4, v6}, Las5;->J(Ljb9;)Lam4;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    sget-object v6, Lam4;->b:Lam4;

    .line 98
    .line 99
    if-ne v4, v6, :cond_5

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_5
    sget-object v6, Lam4;->a:Lam4;

    .line 103
    .line 104
    if-ne v4, v6, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    sget-object v4, Lu65;->J:Lu65;

    .line 108
    .line 109
    invoke-virtual {v9, v4}, Ls65;->i(Lu65;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    :goto_4
    if-eqz v4, :cond_7

    .line 114
    .line 115
    invoke-virtual {p1, v12, v2}, Lc87;->m(Lgc8;Lkp0;)Lem4;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    goto :goto_5

    .line 120
    :cond_7
    move-object v4, v5

    .line 121
    goto :goto_5

    .line 122
    :cond_8
    invoke-virtual {p1, v5, v2}, Lc87;->v(Lem4;Lkp0;)Lem4;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    :cond_9
    :goto_5
    invoke-static {p1, v2, v4}, Ltn7;->j(Lc87;Lkp0;Lem4;)Lem4;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-object v6, p0, Lp70;->d:Lkp0;

    .line 131
    .line 132
    if-ne v6, v2, :cond_a

    .line 133
    .line 134
    if-ne v0, v3, :cond_a

    .line 135
    .line 136
    if-ne v5, v4, :cond_a

    .line 137
    .line 138
    move-object v0, p0

    .line 139
    goto :goto_6

    .line 140
    :cond_a
    new-instance v0, Lp70;

    .line 141
    .line 142
    iget-object v6, p0, Lp70;->p:Ljava/lang/Object;

    .line 143
    .line 144
    iget-boolean v7, p0, Lp70;->q:Z

    .line 145
    .line 146
    iget-object v5, p0, Lp70;->k:Lfk5;

    .line 147
    .line 148
    move-object v1, p0

    .line 149
    invoke-direct/range {v0 .. v7}, Lp70;-><init>(Lp70;Lkp0;Lrc8;Lem4;Lfk5;Ljava/lang/Object;Z)V

    .line 150
    .line 151
    .line 152
    :goto_6
    if-eqz v2, :cond_11

    .line 153
    .line 154
    iget-object v3, p0, Ltn7;->a:Ljava/lang/Class;

    .line 155
    .line 156
    invoke-interface {v2, v9, v3}, Lkp0;->c(Ls65;Ljava/lang/Class;)Lqk4;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-eqz v2, :cond_11

    .line 161
    .line 162
    iget-object v3, v2, Lqk4;->b:Lpk4;

    .line 163
    .line 164
    sget-object v4, Lpk4;->e:Lpk4;

    .line 165
    .line 166
    if-eq v3, v4, :cond_11

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eq v3, v13, :cond_c

    .line 173
    .line 174
    const/4 v4, 0x2

    .line 175
    sget-object v5, Lpk4;->c:Lpk4;

    .line 176
    .line 177
    if-eq v3, v4, :cond_10

    .line 178
    .line 179
    const/4 v4, 0x3

    .line 180
    if-eq v3, v4, :cond_f

    .line 181
    .line 182
    const/4 v4, 0x4

    .line 183
    if-eq v3, v4, :cond_e

    .line 184
    .line 185
    const/4 v4, 0x5

    .line 186
    if-eq v3, v4, :cond_b

    .line 187
    .line 188
    :goto_7
    move-object v7, v10

    .line 189
    move v8, v11

    .line 190
    goto :goto_a

    .line 191
    :cond_b
    iget-object v2, v2, Lqk4;->d:Ljava/lang/Class;

    .line 192
    .line 193
    invoke-virtual {p1, v2}, Lc87;->x(Ljava/lang/Class;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    if-nez v10, :cond_d

    .line 198
    .line 199
    :cond_c
    :goto_8
    move-object v7, v10

    .line 200
    :goto_9
    move v8, v13

    .line 201
    goto :goto_a

    .line 202
    :cond_d
    invoke-virtual {p1, v10}, Lc87;->y(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    goto :goto_7

    .line 207
    :cond_e
    invoke-static {v12}, Liz1;->l(Lgc8;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    if-eqz v10, :cond_c

    .line 212
    .line 213
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_c

    .line 222
    .line 223
    invoke-static {v10}, Lzh8;->p(Ljava/lang/Object;)Lz1;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    goto :goto_8

    .line 228
    :cond_f
    move-object v7, v5

    .line 229
    goto :goto_9

    .line 230
    :cond_10
    invoke-virtual {v12}, Lho6;->C()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    if-eqz v2, :cond_c

    .line 235
    .line 236
    move-object v10, v5

    .line 237
    goto :goto_8

    .line 238
    :goto_a
    iget-object v2, p0, Lp70;->p:Ljava/lang/Object;

    .line 239
    .line 240
    if-ne v2, v7, :cond_12

    .line 241
    .line 242
    iget-boolean v1, p0, Lp70;->q:Z

    .line 243
    .line 244
    if-eq v1, v8, :cond_11

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_11
    move-object v2, v0

    .line 248
    goto :goto_c

    .line 249
    :cond_12
    :goto_b
    new-instance v1, Lp70;

    .line 250
    .line 251
    iget-object v5, v0, Lp70;->f:Lem4;

    .line 252
    .line 253
    iget-object v6, v0, Lp70;->k:Lfk5;

    .line 254
    .line 255
    iget-object v3, v0, Lp70;->d:Lkp0;

    .line 256
    .line 257
    iget-object v4, v0, Lp70;->e:Lrc8;

    .line 258
    .line 259
    move-object v2, v0

    .line 260
    invoke-direct/range {v1 .. v8}, Lp70;-><init>(Lp70;Lkp0;Lrc8;Lem4;Lfk5;Ljava/lang/Object;Z)V

    .line 261
    .line 262
    .line 263
    return-object v1

    .line 264
    :goto_c
    return-object v2
.end method

.method public final c(Lc87;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iget-boolean p0, p0, Lp70;->q:Z

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, p0, Lp70;->p:Ljava/lang/Object;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    iget-object v1, p0, Lp70;->f:Lem4;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, p1, v1}, Lp70;->o(Lc87;Ljava/lang/Class;)Lem4;

    .line 33
    .line 34
    .line 35
    move-result-object v1
    :try_end_0
    .catch Lyk4; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ler3;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    :goto_0
    sget-object p0, Lpk4;->c:Lpk4;

    .line 45
    .line 46
    if-ne v0, p0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v1, p1, p2}, Lem4;->c(Lc87;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_4
    const/4 p0, 0x1

    .line 59
    return p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lp70;->k:Lfk5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lp70;->k:Lfk5;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lp70;->f:Lem4;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p3, v0}, Lp70;->o(Lc87;Ljava/lang/Class;)Lem4;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    iget-object p0, p0, Lp70;->e:Lrc8;

    .line 30
    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3, p0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lp70;->k:Lfk5;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lp70;->f:Lem4;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p3, v0}, Lp70;->o(Lc87;Ljava/lang/Class;)Lem4;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final g(Lfk5;)Lem4;
    .locals 10

    .line 1
    iget-object v0, p0, Lp70;->f:Lem4;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lem4;->g(Lfk5;)Lem4;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    move-object v6, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move-object v6, v0

    .line 15
    :goto_0
    iget-object v1, p0, Lp70;->k:Lfk5;

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    move-object v7, p1

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    new-instance v2, Ldk5;

    .line 22
    .line 23
    invoke-direct {v2, p1, v1}, Ldk5;-><init>(Lfk5;Lfk5;)V

    .line 24
    .line 25
    .line 26
    move-object v7, v2

    .line 27
    :goto_1
    if-ne v0, v6, :cond_3

    .line 28
    .line 29
    if-ne v1, v7, :cond_3

    .line 30
    .line 31
    :goto_2
    return-object p0

    .line 32
    :cond_3
    new-instance v2, Lp70;

    .line 33
    .line 34
    iget-object v8, p0, Lp70;->p:Ljava/lang/Object;

    .line 35
    .line 36
    iget-boolean v9, p0, Lp70;->q:Z

    .line 37
    .line 38
    iget-object v4, p0, Lp70;->d:Lkp0;

    .line 39
    .line 40
    iget-object v5, p0, Lp70;->e:Lrc8;

    .line 41
    .line 42
    move-object v3, p0

    .line 43
    invoke-direct/range {v2 .. v9}, Lp70;-><init>(Lp70;Lkp0;Lrc8;Lem4;Lfk5;Ljava/lang/Object;Z)V

    .line 44
    .line 45
    .line 46
    return-object v2
.end method

.method public final o(Lc87;Ljava/lang/Class;)Lem4;
    .locals 3

    .line 1
    iget-object v0, p0, Lp70;->n:Lod2;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lp70;->c:Lgc8;

    .line 10
    .line 11
    invoke-virtual {v0}, Lgc8;->u0()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lp70;->d:Lkp0;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v0, p2}, Lc87;->e(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0, v2}, Lc87;->m(Lgc8;Lkp0;)Lem4;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, p2, v2}, Lc87;->n(Ljava/lang/Class;Lkp0;)Lem4;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    iget-object v0, p0, Lp70;->k:Lfk5;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lem4;->g(Lfk5;)Lem4;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_1
    iget-object v0, p0, Lp70;->n:Lod2;

    .line 41
    .line 42
    invoke-virtual {v0, p2, p1}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lp70;->n:Lod2;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_2
    return-object v0
.end method
