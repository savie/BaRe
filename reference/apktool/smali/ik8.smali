.class public final Lik8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lqc6;

.field public final b:Lkm8;

.field public c:Lib;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lh80;


# direct methods
.method public constructor <init>(Lqc6;Lib;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lik8;->a:Lqc6;

    .line 5
    .line 6
    new-instance v0, Lzq8;

    .line 7
    .line 8
    iget-object v1, p1, Lqc6;->b:Loc6;

    .line 9
    .line 10
    iget-object v2, v1, Loc6;->e:Lnb4;

    .line 11
    .line 12
    const/16 v3, 0xb

    .line 13
    .line 14
    invoke-direct {v0, v2, v3}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Loc6;->d()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Lzq8;

    .line 24
    .line 25
    iget-object v1, v1, Loc6;->e:Lnb4;

    .line 26
    .line 27
    invoke-direct {v2, v1, v3}, Lzq8;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v2, Lai5;

    .line 32
    .line 33
    invoke-direct {v2, v1}, Lai5;-><init>(Loc6;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance v1, Lkm8;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lkm8;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lik8;->b:Lkm8;

    .line 42
    .line 43
    iget-object v1, p2, Lib;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lgz0;

    .line 46
    .line 47
    iget-object p2, p2, Lib;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p2, Lgz0;

    .line 50
    .line 51
    sget-object v3, Lqv2;->e:Lqv2;

    .line 52
    .line 53
    iget-object v4, p1, Lqc6;->b:Loc6;

    .line 54
    .line 55
    iget-object v4, v4, Loc6;->e:Lnb4;

    .line 56
    .line 57
    new-instance v5, Lsb4;

    .line 58
    .line 59
    invoke-direct {v5, v3, v4}, Lsb4;-><init>(Lqn5;Lnb4;)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v1, Lgz0;->a:Lsb4;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-virtual {v0, v5, v3, v4}, Lzq8;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 66
    .line 67
    .line 68
    iget-object v0, p2, Lgz0;->a:Lsb4;

    .line 69
    .line 70
    invoke-interface {v2, v5, v0, v4}, Lvn5;->l(Lsb4;Lsb4;Lvk9;)Lsb4;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v4, Lgz0;

    .line 75
    .line 76
    iget-boolean v1, v1, Lgz0;->b:Z

    .line 77
    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-direct {v4, v3, v1, v5}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lgz0;

    .line 83
    .line 84
    iget-boolean p2, p2, Lgz0;->b:Z

    .line 85
    .line 86
    invoke-interface {v2}, Lvn5;->g()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-direct {v1, v0, p2, v2}, Lgz0;-><init>(Lsb4;ZZ)V

    .line 91
    .line 92
    .line 93
    new-instance p2, Lib;

    .line 94
    .line 95
    const/16 v0, 0xe

    .line 96
    .line 97
    invoke-direct {p2, v0, v1, v4}, Lib;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iput-object p2, p0, Lik8;->c:Lib;

    .line 101
    .line 102
    new-instance p2, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object p2, p0, Lik8;->d:Ljava/util/ArrayList;

    .line 108
    .line 109
    new-instance p2, Lh80;

    .line 110
    .line 111
    invoke-direct {p2, p1}, Lh80;-><init>(Lqc6;)V

    .line 112
    .line 113
    .line 114
    iput-object p2, p0, Lik8;->e:Lh80;

    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lsb4;Lez2;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lik8;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    :goto_0
    move-object v4, p3

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    filled-new-array {p3}, [Lez2;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    iget-object v0, p0, Lik8;->e:Lh80;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance p0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    :cond_1
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v6, 0x3

    .line 40
    const/4 v7, 0x4

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lk31;

    .line 48
    .line 49
    iget v3, v2, Lk31;->a:I

    .line 50
    .line 51
    invoke-static {v3, v7}, Ldj7;->a(II)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    iget-object v3, v0, Lh80;->c:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v3, Lnb4;

    .line 60
    .line 61
    iget-object v5, v2, Lk31;->c:Lsb4;

    .line 62
    .line 63
    iget-object v5, v5, Lsb4;->a:Lqn5;

    .line 64
    .line 65
    iget-object v7, v2, Lk31;->b:Lsb4;

    .line 66
    .line 67
    iget-object v7, v7, Lsb4;->a:Lqn5;

    .line 68
    .line 69
    new-instance v8, Lhk5;

    .line 70
    .line 71
    sget-object v9, Lm61;->b:Lm61;

    .line 72
    .line 73
    invoke-direct {v8, v9, v5}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 74
    .line 75
    .line 76
    new-instance v5, Lhk5;

    .line 77
    .line 78
    invoke-direct {v5, v9, v7}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v8, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    iget-object v8, v2, Lk31;->d:Lm61;

    .line 88
    .line 89
    iget-object v7, v2, Lk31;->b:Lsb4;

    .line 90
    .line 91
    new-instance v5, Lk31;

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    const/4 v10, 0x0

    .line 95
    invoke-direct/range {v5 .. v10}, Lk31;-><init>(ILsb4;Lm61;Lm61;Lsb4;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const/4 v2, 0x1

    .line 103
    move-object v3, p1

    .line 104
    move-object v5, p2

    .line 105
    invoke-virtual/range {v0 .. v5}, Lh80;->d(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/List;Lsb4;)V

    .line 106
    .line 107
    .line 108
    const/4 v2, 0x2

    .line 109
    invoke-virtual/range {v0 .. v5}, Lh80;->d(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/List;Lsb4;)V

    .line 110
    .line 111
    .line 112
    move-object v2, v3

    .line 113
    move-object v3, p0

    .line 114
    move-object p0, v2

    .line 115
    move v2, v6

    .line 116
    invoke-virtual/range {v0 .. v5}, Lh80;->d(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/List;Lsb4;)V

    .line 117
    .line 118
    .line 119
    move-object v3, p0

    .line 120
    move v2, v7

    .line 121
    invoke-virtual/range {v0 .. v5}, Lh80;->d(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/List;Lsb4;)V

    .line 122
    .line 123
    .line 124
    const/4 v2, 0x5

    .line 125
    invoke-virtual/range {v0 .. v5}, Lh80;->d(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/List;Lsb4;)V

    .line 126
    .line 127
    .line 128
    return-object v1
.end method

.method public final b(Lez2;Lwc2;)Ljava/util/List;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lik8;->d:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v0

    .line 16
    :goto_0
    const-string v4, "A cancel should cancel all event registrations"

    .line 17
    .line 18
    invoke-static {v4, v3}, Lzm5;->r(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lik8;->a:Lqc6;

    .line 22
    .line 23
    iget-object p0, p0, Lqc6;->a:Lgy5;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lez2;

    .line 40
    .line 41
    new-instance v5, Lg21;

    .line 42
    .line 43
    invoke-direct {v5, v4, p2, p0}, Lg21;-><init>(Lez2;Lwc2;Lgy5;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 51
    .line 52
    :cond_2
    if-eqz p1, :cond_7

    .line 53
    .line 54
    const/4 p0, -0x1

    .line 55
    move p2, p0

    .line 56
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-ge v0, v3, :cond_5

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lez2;

    .line 67
    .line 68
    invoke-virtual {v3, p1}, Lez2;->f(Lez2;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4

    .line 73
    .line 74
    iget-object p2, v3, Lez2;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move p2, v0

    .line 84
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move v0, p2

    .line 88
    :goto_3
    if-eq v0, p0, :cond_6

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Lez2;

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lez2;->h()V

    .line 100
    .line 101
    .line 102
    :cond_6
    return-object v2

    .line 103
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_8

    .line 112
    .line 113
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lez2;

    .line 118
    .line 119
    invoke-virtual {p1}, Lez2;->h()V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 124
    .line 125
    .line 126
    return-object v2
.end method
