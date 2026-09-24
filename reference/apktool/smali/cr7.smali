.class public final Lcr7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lyz0;

.field public b:Ldr;

.field public c:Lx00;

.field public d:Lny1;

.field public e:Ler4;

.field public f:Ler4;

.field public g:Ler4;

.field public h:Ltr5;

.field public i:Lx44;

.field public j:Luq4;

.field public k:Ldb8;

.field public l:Z


# virtual methods
.method public final a(Lau1;Ljava/lang/annotation/Annotation;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcr7;->i:Lx44;

    .line 2
    .line 3
    iget-object v1, p0, Lcr7;->f:Ler4;

    .line 4
    .line 5
    instance-of v2, p2, Lu70;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcr7;->e:Ler4;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, v2}, Lcr7;->b(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    instance-of v2, p2, Lut2;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, v1}, Lcr7;->e(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    instance-of v2, p2, Ljt2;

    .line 22
    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, v1}, Lcr7;->e(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    instance-of v2, p2, Lpt2;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2, v1}, Lcr7;->e(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    instance-of v2, p2, Lgt2;

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2, v1}, Lcr7;->b(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V

    .line 40
    .line 41
    .line 42
    :cond_4
    instance-of v2, p2, Lct2;

    .line 43
    .line 44
    if-eqz v2, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2, v1}, Lcr7;->b(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V

    .line 47
    .line 48
    .line 49
    :cond_5
    instance-of v2, p2, Lmt2;

    .line 50
    .line 51
    if-eqz v2, :cond_6

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, v1}, Lcr7;->b(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V

    .line 54
    .line 55
    .line 56
    :cond_6
    instance-of v2, p2, Lat2;

    .line 57
    .line 58
    if-eqz v2, :cond_7

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v1}, Lcr7;->b(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V

    .line 61
    .line 62
    .line 63
    :cond_7
    instance-of v1, p2, Lvj8;

    .line 64
    .line 65
    if-eqz v1, :cond_9

    .line 66
    .line 67
    invoke-virtual {v0, p1, p2}, Lx44;->b(Lau1;Ljava/lang/annotation/Annotation;)Luq4;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v2, p0, Lcr7;->j:Luq4;

    .line 72
    .line 73
    if-nez v2, :cond_8

    .line 74
    .line 75
    iput-object v1, p0, Lcr7;->j:Luq4;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_8
    new-instance p0, Lw70;

    .line 79
    .line 80
    const-string p1, "Multiple version annotations in %s"

    .line 81
    .line 82
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :cond_9
    :goto_0
    instance-of v1, p2, Lq08;

    .line 91
    .line 92
    if-eqz v1, :cond_e

    .line 93
    .line 94
    iget-object v1, p0, Lcr7;->g:Ler4;

    .line 95
    .line 96
    invoke-virtual {v0, p1, p2}, Lx44;->b(Lau1;Ljava/lang/annotation/Annotation;)Luq4;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {p1}, Luq4;->f()Ls03;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-interface {p1}, Luq4;->a()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-object v3, p0, Lcr7;->k:Ldb8;

    .line 109
    .line 110
    invoke-interface {v0}, Ls03;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_a

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Lcr7;->d(Ls03;)Ldb8;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    :cond_a
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-nez v0, :cond_d

    .line 125
    .line 126
    iget-object p0, p0, Lcr7;->a:Lyz0;

    .line 127
    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Luq4;->h()Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-eqz p2, :cond_b

    .line 136
    .line 137
    iget-object p0, p0, Lyz0;->d:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p0, Ler4;

    .line 140
    .line 141
    invoke-static {p1, p0}, Lyz0;->b(Luq4;Ler4;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_b
    invoke-interface {p1}, Luq4;->j()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_c

    .line 150
    .line 151
    iget-object p0, p0, Lyz0;->f:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p0, Ler4;

    .line 154
    .line 155
    invoke-static {p1, p0}, Lyz0;->b(Luq4;Ler4;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_c
    iget-object p0, p0, Lyz0;->e:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Ler4;

    .line 162
    .line 163
    invoke-static {p1, p0}, Lyz0;->b(Luq4;Ler4;)V

    .line 164
    .line 165
    .line 166
    :goto_1
    invoke-virtual {v3, p1}, Ldb8;->f(Luq4;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_d
    new-instance p0, Lsf5;

    .line 174
    .line 175
    const-string p1, "Multiple text annotations in %s"

    .line 176
    .line 177
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_e
    return-void
.end method

.method public final b(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcr7;->i:Lx44;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lx44;->b(Lau1;Ljava/lang/annotation/Annotation;)Luq4;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Luq4;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p2}, Luq4;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p3, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p2, p3}, Lcr7;->c(Luq4;Ler4;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Lkd5;

    .line 26
    .line 27
    const-string p2, "Duplicate annotation of name \'%s\' on %s"

    .line 28
    .line 29
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p2, p1}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public final c(Luq4;Ler4;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Luq4;->f()Ls03;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Luq4;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcr7;->k:Ldb8;

    .line 10
    .line 11
    invoke-interface {v0}, Ls03;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcr7;->d(Ls03;)Ldb8;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_0
    iget-object p0, p0, Lcr7;->a:Lyz0;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Luq4;->h()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lyz0;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Ler4;

    .line 35
    .line 36
    invoke-static {p1, p0}, Lyz0;->b(Luq4;Ler4;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p1}, Luq4;->j()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lyz0;->f:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Ler4;

    .line 49
    .line 50
    invoke-static {p1, p0}, Lyz0;->b(Luq4;Ler4;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object p0, p0, Lyz0;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Ler4;

    .line 57
    .line 58
    invoke-static {p1, p0}, Lyz0;->b(Luq4;Ler4;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {v2, p1}, Ldb8;->f(Luq4;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final d(Ls03;)Ldb8;
    .locals 3

    .line 1
    iget-object p0, p0, Lcr7;->k:Ldb8;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ldb8;->d(Ls03;)Ldb8;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ls03;->getPrefix()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1}, Ls03;->getFirst()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p1}, Ls03;->getIndex()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v2, v1, v0}, Ldb8;->e(ILjava/lang/String;Ljava/lang/String;)Ldb8;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_1
    invoke-interface {p1}, Ls03;->Y()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    invoke-interface {p1}, Ls03;->a()Ls03;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0
.end method

.method public final e(Lau1;Ljava/lang/annotation/Annotation;Ler4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcr7;->i:Lx44;

    .line 2
    .line 3
    iget-object v0, v0, Lx44;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lw00;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Ldr4;

    .line 11
    .line 12
    invoke-direct {v1, p1, p2}, Ldr4;-><init>(Lau1;Ljava/lang/annotation/Annotation;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, p2, v1}, Lw00;->r(Lau1;Ljava/lang/annotation/Annotation;Ldr4;)Lcr4;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Lcr4;->a:Ljava/util/List;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 25
    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Luq4;

    .line 41
    .line 42
    invoke-interface {p2}, Luq4;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p2}, Luq4;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p3, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    invoke-virtual {p0, p2, p3}, Lcr7;->c(Luq4;Ler4;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    new-instance p0, Lkd5;

    .line 61
    .line 62
    const-string p1, "Duplicate annotation of name \'%s\' on %s"

    .line 63
    .line 64
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-direct {p0, p1, p2}, Lkd5;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_2
    return-void
.end method
