.class public final Lsg4;
.super Ly50;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final c(Lc87;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lfk4;->S(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lsg4;->s(Ljava/util/Iterator;Lfk4;Lc87;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lfk4;->n()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final o(Lrc8;)Lfu1;
    .locals 6

    .line 1
    new-instance v0, Lsg4;

    .line 2
    .line 3
    iget-object v4, p0, Ly50;->n:Lem4;

    .line 4
    .line 5
    iget-object v5, p0, Ly50;->f:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v2, p0, Ly50;->d:Lkp0;

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    move-object v3, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Ly50;-><init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final bridge synthetic q(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lsg4;->s(Ljava/util/Iterator;Lfk4;Lc87;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r(Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)Ly50;
    .locals 6

    .line 1
    new-instance v0, Lsg4;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Ly50;-><init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final s(Ljava/util/Iterator;Lfk4;Lc87;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Ly50;->k:Lrc8;

    .line 10
    .line 11
    iget-object v1, p0, Ly50;->n:Lem4;

    .line 12
    .line 13
    if-nez v1, :cond_7

    .line 14
    .line 15
    iget-object v1, p0, Ly50;->p:Lod2;

    .line 16
    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1, v3}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_5

    .line 36
    .line 37
    iget-object v4, p0, Ly50;->c:Lgc8;

    .line 38
    .line 39
    invoke-virtual {v4}, Lgc8;->u0()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    invoke-virtual {p3, v4, v3}, Lc87;->e(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p0, v1, v3, p3}, Ly50;->p(Lod2;Lgc8;Lc87;)Lem4;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v4, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v4, p0, Ly50;->d:Lkp0;

    .line 56
    .line 57
    invoke-virtual {p3, v3, v4}, Lc87;->j(Ljava/lang/Class;Lkp0;)Lem4;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v1, v3, v4}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eq v1, v3, :cond_4

    .line 66
    .line 67
    iput-object v3, p0, Ly50;->p:Lod2;

    .line 68
    .line 69
    :cond_4
    :goto_0
    iget-object v1, p0, Ly50;->p:Lod2;

    .line 70
    .line 71
    :cond_5
    if-nez v0, :cond_6

    .line 72
    .line 73
    invoke-virtual {v4, v2, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_6
    invoke-virtual {v4, v2, p2, p3, v0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-nez p0, :cond_8

    .line 92
    .line 93
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_8
    if-nez v0, :cond_9

    .line 98
    .line 99
    invoke-virtual {v1, p0, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_9
    invoke-virtual {v1, p0, p2, p3, v0}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_7

    .line 111
    .line 112
    :goto_3
    return-void
.end method
