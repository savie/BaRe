.class public final Lrb4;
.super Ly50;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lgc8;ZLrc8;Lem4;I)V
    .locals 0

    .line 7
    iput p6, p0, Lrb4;->q:I

    invoke-direct/range {p0 .. p5}, Ly50;-><init>(Ljava/lang/Class;Lgc8;ZLrc8;Lem4;)V

    return-void
.end method

.method public synthetic constructor <init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;I)V
    .locals 0

    .line 1
    iput p6, p0, Lrb4;->q:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Ly50;-><init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Lc87;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget p0, p0, Lrb4;->q:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    xor-int/lit8 p0, p0, 0x1

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_0
    check-cast p2, Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 4

    .line 1
    iget v0, p0, Lrb4;->q:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Ly50;->f:Ljava/lang/Boolean;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v0, Lx77;->K:Lx77;

    .line 14
    .line 15
    iget-object v3, p3, Lc87;->a:Lv77;

    .line 16
    .line 17
    invoke-virtual {v3, v0}, Lv77;->l(Lx77;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    if-ne v2, v0, :cond_3

    .line 26
    .line 27
    :cond_1
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    xor-int/2addr v0, v1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v0, 0x0

    .line 49
    :goto_0
    if-eqz v0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lrb4;->s(Ljava/lang/Iterable;Lfk4;Lc87;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p2, p1}, Lfk4;->S(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lrb4;->s(Ljava/lang/Iterable;Lfk4;Lc87;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lfk4;->n()V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void

    .line 65
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ne v0, v1, :cond_6

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    sget-object v0, Lx77;->K:Lx77;

    .line 76
    .line 77
    iget-object v1, p3, Lc87;->a:Lv77;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lv77;->l(Lx77;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_5

    .line 84
    .line 85
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    if-ne v2, v0, :cond_6

    .line 88
    .line 89
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lrb4;->t(Ljava/util/List;Lfk4;Lc87;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    invoke-virtual {p2, p1}, Lfk4;->U(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lrb4;->t(Ljava/util/List;Lfk4;Lc87;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lfk4;->n()V

    .line 100
    .line 101
    .line 102
    :goto_2
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Lrc8;)Lfu1;
    .locals 9

    .line 1
    iget v0, p0, Lrb4;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lrb4;

    .line 7
    .line 8
    iget-object v6, p0, Ly50;->f:Ljava/lang/Boolean;

    .line 9
    .line 10
    const/4 v7, 0x1

    .line 11
    iget-object v3, p0, Ly50;->d:Lkp0;

    .line 12
    .line 13
    iget-object v5, p0, Ly50;->n:Lem4;

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    move-object v4, p1

    .line 17
    invoke-direct/range {v1 .. v7}, Lrb4;-><init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;I)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    move-object v2, p0

    .line 22
    move-object v4, p1

    .line 23
    new-instance p0, Lrb4;

    .line 24
    .line 25
    iget-object v7, v2, Ly50;->f:Ljava/lang/Boolean;

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    move-object v5, v4

    .line 29
    iget-object v4, v2, Ly50;->d:Lkp0;

    .line 30
    .line 31
    iget-object v6, v2, Ly50;->n:Lem4;

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    move-object v2, p0

    .line 35
    invoke-direct/range {v2 .. v8}, Lrb4;-><init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;I)V

    .line 36
    .line 37
    .line 38
    return-object v2

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic q(Ljava/lang/Object;Lfk4;Lc87;)V
    .locals 1

    .line 1
    iget v0, p0, Lrb4;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lrb4;->s(Ljava/lang/Iterable;Lfk4;Lc87;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lrb4;->t(Ljava/util/List;Lfk4;Lc87;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;)Ly50;
    .locals 9

    .line 1
    iget v0, p0, Lrb4;->q:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v1, Lrb4;

    .line 7
    .line 8
    const/4 v7, 0x1

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-direct/range {v1 .. v7}, Lrb4;-><init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;I)V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_0
    move-object v2, p0

    .line 19
    move-object v3, p1

    .line 20
    move-object v4, p2

    .line 21
    move-object v5, p3

    .line 22
    move-object v6, p4

    .line 23
    new-instance p0, Lrb4;

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    move-object v7, v6

    .line 27
    move-object v6, v5

    .line 28
    move-object v5, v4

    .line 29
    move-object v4, v3

    .line 30
    move-object v3, v2

    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v2 .. v8}, Lrb4;-><init>(Ly50;Lkp0;Lrc8;Lem4;Ljava/lang/Boolean;I)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public s(Ljava/lang/Iterable;Lfk4;Lc87;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move-object v1, v0

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 20
    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    iget-object v3, p0, Ly50;->n:Lem4;

    .line 24
    .line 25
    if-nez v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-ne v3, v0, :cond_2

    .line 32
    .line 33
    :goto_0
    move-object v3, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v0, p0, Ly50;->d:Lkp0;

    .line 36
    .line 37
    invoke-virtual {p3, v3, v0}, Lc87;->q(Ljava/lang/Class;Lkp0;)Lem4;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    move-object v0, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move-object v5, v3

    .line 44
    move-object v3, v1

    .line 45
    move-object v1, v5

    .line 46
    :goto_1
    iget-object v4, p0, Ly50;->k:Lrc8;

    .line 47
    .line 48
    if-nez v4, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1, v2, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    invoke-virtual {v1, v2, p2, p3, v4}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V

    .line 55
    .line 56
    .line 57
    :goto_2
    move-object v1, v3

    .line 58
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    :cond_5
    return-void
.end method

.method public t(Ljava/util/List;Lfk4;Lc87;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Ly50;->k:Lrc8;

    .line 4
    .line 5
    iget-object v3, p0, Ly50;->n:Lem4;

    .line 6
    .line 7
    if-eqz v3, :cond_3

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_a

    .line 16
    .line 17
    :cond_0
    :goto_0
    if-ge v1, p0, :cond_f

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    :try_start_0
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    if-nez v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v3, v4, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {v3, v4, p2, p3, v2}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_2
    invoke-static {p3, p0, p1, v1}, Ltn7;->m(Lc87;Ljava/lang/Exception;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_3
    iget-object v3, p0, Ly50;->d:Lkp0;

    .line 48
    .line 49
    iget-object v4, p0, Ly50;->c:Lgc8;

    .line 50
    .line 51
    if-eqz v2, :cond_9

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_4

    .line 58
    .line 59
    goto/16 :goto_a

    .line 60
    .line 61
    :cond_4
    :try_start_1
    iget-object v6, p0, Ly50;->p:Lod2;

    .line 62
    .line 63
    :goto_3
    if-ge v1, v5, :cond_f

    .line 64
    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-nez v7, :cond_5

    .line 70
    .line 71
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 72
    .line 73
    .line 74
    goto :goto_5

    .line 75
    :catch_1
    move-exception p0

    .line 76
    goto :goto_6

    .line 77
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-virtual {v6, v8}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    if-nez v9, :cond_8

    .line 86
    .line 87
    invoke-virtual {v4}, Lgc8;->u0()Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_6

    .line 92
    .line 93
    invoke-virtual {p3, v4, v8}, Lc87;->e(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    invoke-virtual {p0, v6, v8, p3}, Ly50;->p(Lod2;Lgc8;Lc87;)Lem4;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    move-object v9, v6

    .line 102
    goto :goto_4

    .line 103
    :cond_6
    invoke-virtual {p3, v8, v3}, Lc87;->j(Ljava/lang/Class;Lkp0;)Lem4;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    invoke-virtual {v6, v8, v9}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    if-eq v6, v8, :cond_7

    .line 112
    .line 113
    iput-object v8, p0, Ly50;->p:Lod2;

    .line 114
    .line 115
    :cond_7
    :goto_4
    iget-object v6, p0, Ly50;->p:Lod2;

    .line 116
    .line 117
    :cond_8
    invoke-virtual {v9, v7, p2, p3, v2}, Lem4;->f(Ljava/lang/Object;Lfk4;Lc87;Lrc8;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .line 119
    .line 120
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :goto_6
    invoke-static {p3, p0, p1, v1}, Ltn7;->m(Lc87;Ljava/lang/Exception;Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_a

    .line 132
    .line 133
    goto :goto_a

    .line 134
    :cond_a
    :try_start_2
    iget-object v5, p0, Ly50;->p:Lod2;

    .line 135
    .line 136
    :goto_7
    if-ge v1, v2, :cond_f

    .line 137
    .line 138
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    if-nez v6, :cond_b

    .line 143
    .line 144
    invoke-virtual {p3, p2}, Lc87;->h(Lfk4;)V

    .line 145
    .line 146
    .line 147
    goto :goto_9

    .line 148
    :catch_2
    move-exception p0

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v5, v7}, Lod2;->x(Ljava/lang/Class;)Lem4;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    if-nez v8, :cond_e

    .line 159
    .line 160
    invoke-virtual {v4}, Lgc8;->u0()Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-eqz v8, :cond_c

    .line 165
    .line 166
    invoke-virtual {p3, v4, v7}, Lc87;->e(Lgc8;Ljava/lang/Class;)Lgc8;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {p0, v5, v7, p3}, Ly50;->p(Lod2;Lgc8;Lc87;)Lem4;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    move-object v8, v5

    .line 175
    goto :goto_8

    .line 176
    :cond_c
    invoke-virtual {p3, v7, v3}, Lc87;->j(Ljava/lang/Class;Lkp0;)Lem4;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v5, v7, v8}, Lod2;->s(Ljava/lang/Class;Lem4;)Lod2;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    if-eq v5, v7, :cond_d

    .line 185
    .line 186
    iput-object v7, p0, Ly50;->p:Lod2;

    .line 187
    .line 188
    :cond_d
    :goto_8
    iget-object v5, p0, Ly50;->p:Lod2;

    .line 189
    .line 190
    :cond_e
    invoke-virtual {v8, v6, p2, p3}, Lem4;->e(Ljava/lang/Object;Lfk4;Lc87;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    .line 192
    .line 193
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_f
    :goto_a
    return-void

    .line 197
    :goto_b
    invoke-static {p3, p0, p1, v1}, Ltn7;->m(Lc87;Ljava/lang/Exception;Ljava/lang/Object;I)V

    .line 198
    .line 199
    .line 200
    throw v0
.end method
