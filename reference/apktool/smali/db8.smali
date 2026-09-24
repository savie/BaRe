.class public final Ldb8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public a:Ls03;

.field public final b:Ler4;

.field public final c:Ler4;

.field public final d:Lfh5;

.field public final e:Lnv7;

.field public final f:Lq27;

.field public final k:Lri2;

.field public final n:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public q:Luq4;

.field public r:Luq4;

.field public final t:I


# direct methods
.method public constructor <init>(Lq27;Lri2;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ler4;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ler4;-><init>(Lq27;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldb8;->b:Ler4;

    .line 10
    .line 11
    new-instance v0, Ler4;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ler4;-><init>(Lq27;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ldb8;->c:Ler4;

    .line 17
    .line 18
    new-instance v0, Lfh5;

    .line 19
    .line 20
    invoke-direct {v0, p2}, Lfh5;-><init>(Lri2;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ldb8;->d:Lfh5;

    .line 24
    .line 25
    new-instance v0, Lnv7;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ldb8;->e:Lnv7;

    .line 31
    .line 32
    iput-object p2, p0, Ldb8;->k:Lri2;

    .line 33
    .line 34
    iput-object p1, p0, Ldb8;->f:Lq27;

    .line 35
    .line 36
    iput-object p4, p0, Ldb8;->p:Ljava/lang/String;

    .line 37
    .line 38
    iput p5, p0, Ldb8;->t:I

    .line 39
    .line 40
    iput-object p3, p0, Ldb8;->n:Ljava/lang/String;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 4

    .line 1
    iget-object p0, p0, Ldb8;->d:Lfh5;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfh5;->iterator()Ljava/util/Iterator;

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
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lah5;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ldb8;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Ldb8;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    return v2

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    xor-int/2addr p0, v2

    .line 50
    return p0
.end method

.method public final d(Ls03;)Ldb8;
    .locals 2

    .line 1
    invoke-interface {p1}, Ls03;->getFirst()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ls03;->getIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object p0, p0, Ldb8;->d:Lfh5;

    .line 10
    .line 11
    invoke-virtual {p0, v1, v0}, Lfh5;->d(ILjava/lang/String;)Ldb8;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p1}, Ls03;->Y()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-interface {p1, v0, v1}, Ls03;->l0(II)Ls03;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ldb8;->d(Ls03;)Ldb8;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_0
    return-object p0
.end method

.method public final e(ILjava/lang/String;Ljava/lang/String;)Ldb8;
    .locals 8

    .line 1
    iget-object v0, p0, Ldb8;->d:Lfh5;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lfh5;->d(ILjava/lang/String;)Ldb8;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_2

    .line 8
    .line 9
    new-instance v2, Ldb8;

    .line 10
    .line 11
    iget-object v3, p0, Ldb8;->f:Lq27;

    .line 12
    .line 13
    iget-object v4, p0, Ldb8;->k:Lri2;

    .line 14
    .line 15
    move v7, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-direct/range {v2 .. v7}, Ldb8;-><init>(Lq27;Lri2;Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v5}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lah5;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Lah5;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v5, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1, v2}, Lah5;->c(Ldb8;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Ldb8;->e:Lnv7;

    .line 43
    .line 44
    invoke-virtual {p0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    return-object v2

    .line 48
    :cond_2
    return-object v1
.end method

.method public final f(Luq4;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Luq4;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "Duplicate annotation of name \'%s\' on %s"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Luq4;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p0, p0, Ldb8;->b:Ler4;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Lw70;

    .line 26
    .line 27
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, v1, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    invoke-interface {p1}, Luq4;->j()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Ldb8;->q:Luq4;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iput-object p1, p0, Ldb8;->q:Luq4;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance p0, Lsf5;

    .line 49
    .line 50
    const-string v0, "Duplicate text annotation on %s"

    .line 51
    .line 52
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, v0, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_3
    invoke-interface {p1}, Luq4;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v2, p0, Ldb8;->c:Ler4;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez v3, :cond_6

    .line 71
    .line 72
    iget-object v1, p0, Ldb8;->e:Lnv7;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-interface {p1}, Luq4;->p()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_5

    .line 88
    .line 89
    iput-object p1, p0, Ldb8;->r:Luq4;

    .line 90
    .line 91
    :cond_5
    invoke-virtual {v2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_6
    new-instance p0, Lwt1;

    .line 96
    .line 97
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {p0, v1, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public final g(Ljava/lang/Class;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ldb8;->c:Ler4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ler4;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Luq4;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ldb8;->i(Luq4;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Ldb8;->b:Ler4;

    .line 26
    .line 27
    invoke-virtual {v1}, Ler4;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Luq4;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Ldb8;->i(Luq4;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-object v2, p0, Ldb8;->q:Luq4;

    .line 50
    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0, v2}, Ldb8;->i(Luq4;)V

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {v1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_7

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Luq4;

    .line 81
    .line 82
    if-eqz v4, :cond_6

    .line 83
    .line 84
    iget-object v4, p0, Ldb8;->a:Ls03;

    .line 85
    .line 86
    if-eqz v4, :cond_5

    .line 87
    .line 88
    invoke-interface {v4, v3}, Ls03;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    new-instance p0, Lw70;

    .line 93
    .line 94
    const-string v0, "Ordered attribute \'%s\' does not exist in %s"

    .line 95
    .line 96
    filled-new-array {v3, p1}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, v0, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_7
    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    iget-object v3, p0, Ldb8;->d:Lfh5;

    .line 117
    .line 118
    if-eqz v2, :cond_d

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    check-cast v2, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lah5;

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Luq4;

    .line 137
    .line 138
    if-nez v3, :cond_a

    .line 139
    .line 140
    if-eqz v4, :cond_9

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    new-instance p0, Lwt1;

    .line 144
    .line 145
    const-string v0, "Ordered element \'%s\' does not exist in %s"

    .line 146
    .line 147
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-direct {p0, v0, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_a
    :goto_4
    if-eqz v3, :cond_c

    .line 156
    .line 157
    if-eqz v4, :cond_c

    .line 158
    .line 159
    invoke-virtual {v3}, Lah5;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_b

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_b
    new-instance p0, Lwt1;

    .line 167
    .line 168
    const-string v0, "Element \'%s\' is also a path name in %s"

    .line 169
    .line 170
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, v0, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    throw p0

    .line 178
    :cond_c
    :goto_5
    iget-object v3, p0, Ldb8;->a:Ls03;

    .line 179
    .line 180
    if-eqz v3, :cond_8

    .line 181
    .line 182
    invoke-interface {v3, v2}, Ls03;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_d
    invoke-virtual {v3}, Lfh5;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_11

    .line 195
    .line 196
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Lah5;

    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    const/4 v3, 0x1

    .line 207
    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_e

    .line 212
    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Ldb8;

    .line 218
    .line 219
    if-eqz v4, :cond_f

    .line 220
    .line 221
    iget-object v5, v4, Ldb8;->n:Ljava/lang/String;

    .line 222
    .line 223
    iget v6, v4, Ldb8;->t:I

    .line 224
    .line 225
    add-int/lit8 v7, v3, 0x1

    .line 226
    .line 227
    if-ne v6, v3, :cond_10

    .line 228
    .line 229
    invoke-virtual {v4, p1}, Ldb8;->g(Ljava/lang/Class;)V

    .line 230
    .line 231
    .line 232
    move v3, v7

    .line 233
    goto :goto_6

    .line 234
    :cond_10
    new-instance p0, Lwt1;

    .line 235
    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    filled-new-array {v5, v0, p1}, [Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    const-string v0, "Path section \'%s[%s]\' is out of sequence in %s"

    .line 245
    .line 246
    invoke-direct {p0, v0, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    throw p0

    .line 250
    :cond_11
    iget-object v1, p0, Ldb8;->q:Luq4;

    .line 251
    .line 252
    if-eqz v1, :cond_14

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_13

    .line 259
    .line 260
    invoke-virtual {p0}, Ldb8;->c()Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-nez v0, :cond_12

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_12
    new-instance v0, Lsf5;

    .line 268
    .line 269
    iget-object p0, p0, Ldb8;->q:Luq4;

    .line 270
    .line 271
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    const-string p1, "Text annotation %s can not be used with paths in %s"

    .line 276
    .line 277
    invoke-direct {v0, p1, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    throw v0

    .line 281
    :cond_13
    new-instance v0, Lsf5;

    .line 282
    .line 283
    iget-object p0, p0, Ldb8;->q:Luq4;

    .line 284
    .line 285
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    const-string p1, "Text annotation %s used with elements in %s"

    .line 290
    .line 291
    invoke-direct {v0, p1, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :cond_14
    :goto_7
    return-void
.end method

.method public final i(Luq4;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Luq4;->f()Ls03;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Ldb8;->a:Ls03;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ls03;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p1}, Ls03;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v1, Lsf5;

    .line 25
    .line 26
    iget-object p0, p0, Ldb8;->k:Lri2;

    .line 27
    .line 28
    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "Path \'%s\' does not match \'%s\' in %s"

    .line 33
    .line 34
    invoke-direct {v1, p1, p0}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_1
    iput-object p1, p0, Ldb8;->a:Ls03;

    .line 39
    .line 40
    return-void
.end method

.method public final isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldb8;->q:Luq4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Ldb8;->c:Ler4;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Ldb8;->b:Ler4;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    invoke-virtual {p0}, Ldb8;->c()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    xor-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Ldb8;->e:Lnv7;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    const-string v1, "]\'"

    .line 4
    .line 5
    const-string v2, "model \'"

    .line 6
    .line 7
    iget-object v3, p0, Ldb8;->n:Ljava/lang/String;

    .line 8
    .line 9
    iget p0, p0, Ldb8;->t:I

    .line 10
    .line 11
    invoke-static {v2, v3, v0, p0, v1}, Lu48;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
