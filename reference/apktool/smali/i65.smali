.class public final Li65;
.super Lfu1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Liv1;


# instance fields
.field public final c:Lkp0;

.field public final d:Z

.field public final e:Lgc8;

.field public final f:Lgc8;

.field public final k:Lem4;

.field public final n:Lem4;

.field public final p:Lrc8;

.field public q:Lod2;

.field public final r:Ljava/lang/Object;

.field public final t:Z


# direct methods
.method public constructor <init>(Lgc8;Lgc8;Lgc8;ZLsc8;Lkp0;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ltn7;-><init>(Lgc8;)V

    .line 41
    iput-object p2, p0, Li65;->e:Lgc8;

    .line 42
    iput-object p3, p0, Li65;->f:Lgc8;

    .line 43
    iput-boolean p4, p0, Li65;->d:Z

    .line 44
    iput-object p5, p0, Li65;->p:Lrc8;

    .line 45
    iput-object p6, p0, Li65;->c:Lkp0;

    .line 46
    sget-object p1, Lf96;->i:Lf96;

    iput-object p1, p0, Li65;->q:Lod2;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Li65;->r:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Li65;->t:Z

    return-void
.end method

.method public constructor <init>(Li65;Lem4;Lem4;Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    const-class v0, Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v1, v0}, Ltn7;-><init>(ILjava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p1, Li65;->e:Lgc8;

    .line 8
    .line 9
    iput-object v0, p0, Li65;->e:Lgc8;

    .line 10
    .line 11
    iget-object v0, p1, Li65;->f:Lgc8;

    .line 12
    .line 13
    iput-object v0, p0, Li65;->f:Lgc8;

    .line 14
    .line 15
    iget-boolean v0, p1, Li65;->d:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Li65;->d:Z

    .line 18
    .line 19
    iget-object v0, p1, Li65;->p:Lrc8;

    .line 20
    .line 21
    iput-object v0, p0, Li65;->p:Lrc8;

    .line 22
    .line 23
    iput-object p2, p0, Li65;->k:Lem4;

    .line 24
    .line 25
    iput-object p3, p0, Li65;->n:Lem4;

    .line 26
    .line 27
    sget-object p2, Lf96;->i:Lf96;

    .line 28
    .line 29
    iput-object p2, p0, Li65;->q:Lod2;

    .line 30
    .line 31
    iget-object p1, p1, Li65;->c:Lkp0;

    .line 32
    .line 33
    iput-object p1, p0, Li65;->c:Lkp0;

    .line 34
    .line 35
    iput-object p4, p0, Li65;->r:Ljava/lang/Object;

    .line 36
    .line 37
    iput-boolean p5, p0, Li65;->t:Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lc87;Lkp0;)Lem4;
    .locals 11

    .line 1
    iget-object v0, p1, Lc87;->a:Lv77;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls65;->d()Las5;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    move-object v3, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p2}, Lkp0;->a()Lod;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    :goto_0
    if-eqz v3, :cond_3

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Las5;->k(Ljb9;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v3, v4}, Lc87;->E(Ljb9;Ljava/lang/Object;)Lem4;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object v4, v2

    .line 30
    :goto_1
    invoke-virtual {v1, v3}, Las5;->c(Ljb9;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v3, v1}, Lc87;->E(Ljb9;Ljava/lang/Object;)Lem4;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v1, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    move-object v1, v2

    .line 44
    move-object v4, v1

    .line 45
    :goto_2
    if-nez v1, :cond_4

    .line 46
    .line 47
    iget-object v1, p0, Li65;->n:Lem4;

    .line 48
    .line 49
    :cond_4
    invoke-static {p1, p2, v1}, Ltn7;->j(Lc87;Lkp0;Lem4;)Lem4;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v3, p0, Li65;->f:Lgc8;

    .line 54
    .line 55
    if-nez v1, :cond_5

    .line 56
    .line 57
    iget-boolean v5, p0, Li65;->d:Z

    .line 58
    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    invoke-virtual {v3}, Lgc8;->z0()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1, v3, p2}, Lc87;->i(Lgc8;Lkp0;)Lem4;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_5
    move-object v8, v1

    .line 72
    if-nez v4, :cond_6

    .line 73
    .line 74
    iget-object v4, p0, Li65;->k:Lem4;

    .line 75
    .line 76
    :cond_6
    if-nez v4, :cond_7

    .line 77
    .line 78
    iget-object v1, p0, Li65;->e:Lgc8;

    .line 79
    .line 80
    invoke-virtual {p1, v1, p2}, Lc87;->k(Lgc8;Lkp0;)Lem4;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_3
    move-object v7, v1

    .line 85
    goto :goto_4

    .line 86
    :cond_7
    invoke-virtual {p1, v4, p2}, Lc87;->w(Lem4;Lkp0;)Lem4;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_3

    .line 91
    :goto_4
    if-eqz p2, :cond_e

    .line 92
    .line 93
    invoke-interface {p2, v0, v2}, Lkp0;->c(Ls65;Ljava/lang/Class;)Lqk4;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-eqz p2, :cond_e

    .line 98
    .line 99
    iget-object v0, p2, Lqk4;->b:Lpk4;

    .line 100
    .line 101
    sget-object v1, Lpk4;->e:Lpk4;

    .line 102
    .line 103
    if-eq v0, v1, :cond_e

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const/4 v1, 0x1

    .line 110
    if-eq v0, v1, :cond_8

    .line 111
    .line 112
    const/4 v4, 0x2

    .line 113
    sget-object v5, Lpk4;->c:Lpk4;

    .line 114
    .line 115
    if-eq v0, v4, :cond_d

    .line 116
    .line 117
    const/4 v4, 0x3

    .line 118
    if-eq v0, v4, :cond_c

    .line 119
    .line 120
    const/4 v4, 0x4

    .line 121
    if-eq v0, v4, :cond_b

    .line 122
    .line 123
    const/4 v3, 0x5

    .line 124
    if-eq v0, v3, :cond_9

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    :cond_8
    :goto_5
    move v10, v1

    .line 128
    move-object v9, v2

    .line 129
    goto :goto_6

    .line 130
    :cond_9
    iget-object p2, p2, Lqk4;->d:Ljava/lang/Class;

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lc87;->x(Ljava/lang/Class;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    if-nez v2, :cond_a

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_a
    invoke-virtual {p1, v2}, Lc87;->y(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    goto :goto_5

    .line 144
    :cond_b
    invoke-static {v3}, Liz1;->l(Lgc8;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-eqz v2, :cond_8

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-eqz p1, :cond_8

    .line 159
    .line 160
    invoke-static {v2}, Lzh8;->p(Ljava/lang/Object;)Lz1;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    goto :goto_5

    .line 165
    :cond_c
    move v10, v1

    .line 166
    move-object v9, v5

    .line 167
    goto :goto_6

    .line 168
    :cond_d
    invoke-virtual {v3}, Lho6;->C()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_8

    .line 173
    .line 174
    move-object v2, v5

    .line 175
    goto :goto_5

    .line 176
    :cond_e
    iget-object v2, p0, Li65;->r:Ljava/lang/Object;

    .line 177
    .line 178
    iget-boolean v1, p0, Li65;->t:Z

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :goto_6
    new-instance v5, Li65;

    .line 182
    .line 183
    move-object v6, p0

    .line 184
    invoke-direct/range {v5 .. v10}, Li65;-><init>(Li65;Lem4;Lem4;Ljava/lang/Object;Z)V

    .line 185
    .line 186
    .line 187
    return-object v5
.end method

.method public final c(Lc87;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p2, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Li65;->t:Z

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    iget-object v0, p0, Li65;->r:Ljava/lang/Object;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Li65;->n:Lem4;

    .line 18
    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Li65;->q:Lod2;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    :try_start_0
    iget-object v2, p0, Li65;->q:Lod2;

    .line 34
    .line 35
    iget-object v3, p0, Li65;->c:Lkp0;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1, v3}, Lc87;->j(Ljava/lang/Class;Lkp0;)Lem4;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v1, v3}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eq v2, v1, :cond_2

    .line 49
    .line 50
    iput-object v1, p0, Li65;->q:Lod2;
    :try_end_0
    .catch Lyk4; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :cond_2
    move-object v1, v3

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    :goto_0
    const/4 p0, 0x0

    .line 55
    return p0

    .line 56
    :cond_3
    move-object v1, v2

    .line 57
    :cond_4
    :goto_1
    sget-object p0, Lpk4;->c:Lpk4;

    .line 58
    .line 59
    if-ne v0, p0, :cond_5

    .line 60
    .line 61
    invoke-virtual {v1, p1, p2}, Lem4;->c(Lc87;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    return p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lfk4;->Y(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Li65;->p(Ljava/util/Map$Entry;Lfk4;Lc87;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lfk4;->q()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lfk4;->g(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmm4;->d:Lmm4;

    .line 7
    .line 8
    invoke-virtual {p4, p1, v0}, Lrc8;->d(Ljava/lang/Object;Lmm4;)Lnw8;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p4, p2, v0}, Lrc8;->e(Lfk4;Lnw8;)Lnw8;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Li65;->p(Ljava/util/Map$Entry;Lfk4;Lc87;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p4, p2, v0}, Lrc8;->f(Lfk4;Lnw8;)Lnw8;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final o(Lrc8;)Lfu1;
    .locals 6

    .line 1
    new-instance v0, Li65;

    .line 2
    .line 3
    iget-object v4, p0, Li65;->r:Ljava/lang/Object;

    .line 4
    .line 5
    iget-boolean v5, p0, Li65;->t:Z

    .line 6
    .line 7
    iget-object v2, p0, Li65;->k:Lem4;

    .line 8
    .line 9
    iget-object v3, p0, Li65;->n:Lem4;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    invoke-direct/range {v0 .. v5}, Li65;-><init>(Li65;Lem4;Lem4;Ljava/lang/Object;Z)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final p(Ljava/util/Map$Entry;Lfk4;Lc87;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p3, Lc87;->k:Li33;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Li65;->k:Lem4;

    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_2

    .line 17
    .line 18
    iget-boolean v3, p0, Li65;->t:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    iget-object v3, p3, Lc87;->f:Lqp5;

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_2
    iget-object v3, p0, Li65;->n:Lem4;

    .line 27
    .line 28
    if-nez v3, :cond_6

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, p0, Li65;->q:Lod2;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_5

    .line 41
    .line 42
    iget-object v4, p0, Li65;->f:Lgc8;

    .line 43
    .line 44
    invoke-virtual {v4}, Lgc8;->u0()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v6, p0, Li65;->q:Lod2;

    .line 49
    .line 50
    iget-object v7, p0, Li65;->c:Lkp0;

    .line 51
    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    invoke-virtual {p3, v4, v3}, Lc87;->e(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v6, v3, p3, v7}, Lod2;->g(Lgc8;Lc87;Lkp0;)Lib;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, v3, Lib;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lod2;

    .line 65
    .line 66
    if-eq v6, v4, :cond_3

    .line 67
    .line 68
    iput-object v4, p0, Li65;->q:Lod2;

    .line 69
    .line 70
    :cond_3
    iget-object v3, v3, Lib;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Lem4;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, v3, v7}, Lc87;->j(Ljava/lang/Class;Lkp0;)Lem4;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v6, v3, v4}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eq v6, v3, :cond_5

    .line 87
    .line 88
    iput-object v3, p0, Li65;->q:Lod2;

    .line 89
    .line 90
    :cond_5
    move-object v3, v4

    .line 91
    :cond_6
    :goto_1
    iget-object v4, p0, Li65;->r:Ljava/lang/Object;

    .line 92
    .line 93
    if-eqz v4, :cond_8

    .line 94
    .line 95
    sget-object v5, Lpk4;->c:Lpk4;

    .line 96
    .line 97
    if-ne v4, v5, :cond_7

    .line 98
    .line 99
    invoke-virtual {v3, p3, v2}, Lem4;->c(Lc87;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_8

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_8

    .line 111
    .line 112
    :goto_2
    return-void

    .line 113
    :cond_8
    :goto_3
    invoke-virtual {v1, v0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Li65;->p:Lrc8;

    .line 117
    .line 118
    if-nez p0, :cond_9

    .line 119
    .line 120
    :try_start_0
    invoke-virtual {v3, v2, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    move-exception p0

    .line 125
    goto :goto_4

    .line 126
    :cond_9
    invoke-virtual {v3, v2, p2, p3, p0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v1, ""

    .line 133
    .line 134
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {p3, p0, p1, p2}, Ltn7;->n(Lc87;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/4 p0, 0x0

    .line 148
    throw p0
.end method
