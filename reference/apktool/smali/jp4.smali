.class public abstract Ljp4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lhp4;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Lhp4;

.field public final d:Lhp4;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V
    .locals 1

    .line 1
    sget-object v0, Lsl4;->b:Lsl4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Ljp4;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Ljp4;->b:Ljava/lang/Object;

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    move-object p3, v0

    .line 13
    :cond_0
    iput-object p3, p0, Ljp4;->c:Lhp4;

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    move-object p4, v0

    .line 18
    :cond_1
    iput-object p4, p0, Ljp4;->d:Lhp4;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Liz1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lhp4;->a(Liz1;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ljp4;->a:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v1, p0, Ljp4;->b:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Liz1;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Ljp4;->d:Lhp4;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Lhp4;->a(Liz1;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b()Lhp4;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp4;->c:Lhp4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Ljp4;
    .locals 6

    .line 1
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 2
    .line 3
    invoke-interface {v0}, Lhp4;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    const/4 v4, 0x0

    .line 15
    invoke-interface {v0, v1, v4, v4}, Lhp4;->m(ILjp4;Ljp4;)Lhp4;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Ljp4;->d:Lhp4;

    .line 20
    .line 21
    invoke-interface {v1}, Lhp4;->n()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    move v5, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v5, v2

    .line 30
    :goto_1
    invoke-interface {v1, v5, v4, v4}, Lhp4;->m(ILjp4;Ljp4;)Lhp4;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p0}, Lhp4;->n()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    move v2, v3

    .line 41
    :cond_2
    invoke-virtual {p0, v2, v0, v1}, Ljp4;->e(ILhp4;Lhp4;)Ljp4;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;
    .locals 2

    .line 1
    iget-object v0, p0, Ljp4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lhp4;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0, v1, v1, p1, v1}, Ljp4;->g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2, v1, v1}, Ljp4;->g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 29
    .line 30
    invoke-interface {v0, p1, p2, p3}, Lhp4;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, v1, v1, v1, p1}, Ljp4;->g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-virtual {p0}, Ljp4;->h()Ljp4;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final e(ILhp4;Lhp4;)Ljp4;
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Ljp4;->c:Lhp4;

    .line 4
    .line 5
    :cond_0
    if-nez p3, :cond_1

    .line 6
    .line 7
    iget-object p3, p0, Ljp4;->d:Lhp4;

    .line 8
    .line 9
    :cond_1
    const/4 v0, 0x1

    .line 10
    iget-object v1, p0, Ljp4;->a:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p0, p0, Ljp4;->b:Ljava/lang/Object;

    .line 13
    .line 14
    if-ne p1, v0, :cond_2

    .line 15
    .line 16
    new-instance p1, Lip4;

    .line 17
    .line 18
    invoke-direct {p1, v1, p0, p2, p3}, Ljp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_2
    new-instance p1, Lgp4;

    .line 23
    .line 24
    invoke-direct {p1, v1, p0, p2, p3}, Lgp4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;
    .locals 4

    .line 1
    iget-object v0, p0, Ljp4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ljp4;->c:Lhp4;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-gez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v1}, Lhp4;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 19
    .line 20
    invoke-interface {v0}, Lhp4;->n()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 27
    .line 28
    check-cast v0, Ljp4;

    .line 29
    .line 30
    iget-object v0, v0, Ljp4;->c:Lhp4;

    .line 31
    .line 32
    invoke-interface {v0}, Lhp4;->n()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Ljp4;->j()Ljp4;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :cond_0
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 43
    .line 44
    invoke-interface {v0, p1, p2}, Lhp4;->f(Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, v2, v2, p1, v2}, Ljp4;->g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v1}, Lhp4;->n()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Ljp4;->l()Ljp4;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_2
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 64
    .line 65
    invoke-interface {v0}, Lhp4;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    invoke-interface {v0}, Lhp4;->n()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    check-cast v0, Ljp4;

    .line 78
    .line 79
    iget-object v0, v0, Ljp4;->c:Lhp4;

    .line 80
    .line 81
    invoke-interface {v0}, Lhp4;->n()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {p0}, Ljp4;->c()Ljp4;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 92
    .line 93
    invoke-interface {v0}, Lhp4;->b()Lhp4;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Lhp4;->n()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-virtual {p0}, Ljp4;->l()Ljp4;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljp4;->c()Ljp4;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    :cond_3
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 112
    .line 113
    iget-object v1, p0, Ljp4;->a:Ljava/lang/Object;

    .line 114
    .line 115
    invoke-interface {p2, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_5

    .line 120
    .line 121
    invoke-interface {v0}, Lhp4;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    sget-object p0, Lsl4;->b:Lsl4;

    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_4
    invoke-interface {v0}, Lhp4;->s()Lhp4;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v1}, Lhp4;->getKey()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-interface {v1}, Lhp4;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v0, Ljp4;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljp4;->k()Lhp4;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p0, v3, v1, v2, v0}, Ljp4;->g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    :cond_5
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 153
    .line 154
    invoke-interface {v0, p1, p2}, Lhp4;->f(Ljava/lang/Object;Ljava/util/Comparator;)Lhp4;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0, v2, v2, v2, p1}, Ljp4;->g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    :goto_0
    invoke-virtual {p0}, Ljp4;->h()Ljp4;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    return-object p0
.end method

.method public abstract g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp4;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()Ljp4;
    .locals 4

    .line 1
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 2
    .line 3
    invoke-interface {v0}, Lhp4;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Ljp4;->c:Lhp4;

    .line 10
    .line 11
    invoke-interface {v1}, Lhp4;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Ljp4;

    .line 19
    .line 20
    iget-object v1, v1, Ljp4;->c:Lhp4;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0, v2, v3, v1}, Ljp4;->e(ILhp4;Lhp4;)Ljp4;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, Ljp4;->i()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-interface {v0, p0, v1, v3}, Lhp4;->m(ILjp4;Ljp4;)Lhp4;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljp4;

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 39
    .line 40
    invoke-interface {v0}, Lhp4;->n()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 47
    .line 48
    check-cast v0, Ljp4;

    .line 49
    .line 50
    iget-object v0, v0, Ljp4;->c:Lhp4;

    .line 51
    .line 52
    invoke-interface {v0}, Lhp4;->n()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Ljp4;->l()Ljp4;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_1
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 63
    .line 64
    invoke-interface {v0}, Lhp4;->n()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 71
    .line 72
    invoke-interface {v0}, Lhp4;->n()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Ljp4;->c()Ljp4;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :cond_2
    return-object p0
.end method

.method public abstract i()I
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final j()Ljp4;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljp4;->c()Ljp4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 6
    .line 7
    invoke-interface {v0}, Lhp4;->b()Lhp4;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lhp4;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Ljp4;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljp4;->l()Ljp4;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1, v1, v1, v0}, Ljp4;->g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    check-cast v2, Ljp4;

    .line 32
    .line 33
    iget-object v2, v2, Ljp4;->c:Lhp4;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {p0, v3, v1, v2}, Ljp4;->e(ILhp4;Lhp4;)Ljp4;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0}, Ljp4;->i()I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    invoke-interface {v0, p0, v2, v1}, Lhp4;->m(ILjp4;Ljp4;)Lhp4;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Ljp4;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljp4;->c()Ljp4;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    :cond_0
    return-object p0
.end method

.method public final k()Lhp4;
    .locals 2

    .line 1
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 2
    .line 3
    invoke-interface {v0}, Lhp4;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lsl4;->b:Lsl4;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 13
    .line 14
    invoke-interface {v0}, Lhp4;->n()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 21
    .line 22
    invoke-interface {v0}, Lhp4;->b()Lhp4;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lhp4;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Ljp4;->j()Ljp4;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :cond_1
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 37
    .line 38
    check-cast v0, Ljp4;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljp4;->k()Lhp4;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v1, v1, v0, v1}, Ljp4;->g(Ljava/lang/Object;Ljava/lang/Object;Lhp4;Lhp4;)Ljp4;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljp4;->h()Ljp4;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final l()Ljp4;
    .locals 3

    .line 1
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 2
    .line 3
    check-cast v0, Ljp4;

    .line 4
    .line 5
    iget-object v0, v0, Ljp4;->d:Lhp4;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v0, v2}, Ljp4;->e(ILhp4;Lhp4;)Ljp4;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Ljp4;->c:Lhp4;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljp4;->i()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {v1, p0, v2, v0}, Lhp4;->m(ILjp4;Ljp4;)Lhp4;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljp4;

    .line 24
    .line 25
    return-object p0
.end method

.method public final bridge synthetic m(ILjp4;Ljp4;)Lhp4;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ljp4;->e(ILhp4;Lhp4;)Ljp4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public o(Ljp4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp4;->c:Lhp4;

    .line 2
    .line 3
    return-void
.end method

.method public final r()Lhp4;
    .locals 0

    .line 1
    iget-object p0, p0, Ljp4;->d:Lhp4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final s()Lhp4;
    .locals 1

    .line 1
    iget-object v0, p0, Ljp4;->c:Lhp4;

    .line 2
    .line 3
    invoke-interface {v0}, Lhp4;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Ljp4;->c:Lhp4;

    .line 11
    .line 12
    invoke-interface {p0}, Lhp4;->s()Lhp4;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final t()Lhp4;
    .locals 2

    .line 1
    iget-object v0, p0, Ljp4;->d:Lhp4;

    .line 2
    .line 3
    invoke-interface {v0}, Lhp4;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-interface {v0}, Lhp4;->t()Lhp4;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
