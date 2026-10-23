.class public final Lg19;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnz3;
.implements Loz3;


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:Lne;

.field public final c:Ldf;

.field public final d:Lw00;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/HashMap;

.field public final k:I

.field public final n:Lq19;

.field public p:Z

.field public final q:Ljava/util/ArrayList;

.field public r:Lhs1;

.field public t:I

.field public final synthetic x:Lpz3;


# direct methods
.method public constructor <init>(Lpz3;Lkz3;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg19;->x:Lpz3;

    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lg19;->a:Ljava/util/LinkedList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lg19;->e:Ljava/util/HashSet;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lg19;->f:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lg19;->q:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lg19;->r:Lhs1;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lg19;->t:I

    .line 39
    .line 40
    iget-object v1, p1, Lpz3;->n:Ln29;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p2}, Lkz3;->a()Lvq;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v5, Lz91;

    .line 51
    .line 52
    iget-object v2, v1, Lvq;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lp50;

    .line 55
    .line 56
    iget-object v3, v1, Lvq;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, v1, Lvq;->d:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v5, v3, v1, v2}, Lz91;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p2, Lkz3;->c:Loe;

    .line 68
    .line 69
    iget-object v1, v1, Loe;->b:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v2, v1

    .line 72
    check-cast v2, Lyc9;

    .line 73
    .line 74
    invoke-static {v2}, Lly8;->h(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v6, p2, Lkz3;->d:Lme;

    .line 78
    .line 79
    iget-object v3, p2, Lkz3;->a:Landroid/content/Context;

    .line 80
    .line 81
    move-object v8, p0

    .line 82
    move-object v7, p0

    .line 83
    invoke-virtual/range {v2 .. v8}, Lyc9;->b(Landroid/content/Context;Landroid/os/Looper;Lz91;Ljava/lang/Object;Lnz3;Loz3;)Lne;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iget-object v1, p2, Lkz3;->b:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    instance-of v2, p0, Laz3;

    .line 92
    .line 93
    if-eqz v2, :cond_0

    .line 94
    .line 95
    move-object v2, p0

    .line 96
    check-cast v2, Laz3;

    .line 97
    .line 98
    iput-object v1, v2, Laz3;->r:Ljava/lang/String;

    .line 99
    .line 100
    :cond_0
    if-eqz v1, :cond_2

    .line 101
    .line 102
    instance-of v1, p0, Lbo5;

    .line 103
    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p0}, Lxs1;->r(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_2
    :goto_0
    iput-object p0, v7, Lg19;->b:Lne;

    .line 112
    .line 113
    iget-object v1, p2, Lkz3;->e:Ldf;

    .line 114
    .line 115
    iput-object v1, v7, Lg19;->c:Ldf;

    .line 116
    .line 117
    new-instance v1, Lw00;

    .line 118
    .line 119
    invoke-direct {v1}, Lw00;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v1, v7, Lg19;->d:Lw00;

    .line 123
    .line 124
    iget v1, p2, Lkz3;->g:I

    .line 125
    .line 126
    iput v1, v7, Lg19;->k:I

    .line 127
    .line 128
    invoke-interface {p0}, Lne;->j()Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-eqz p0, :cond_3

    .line 133
    .line 134
    iget-object p0, p1, Lpz3;->e:Landroid/content/Context;

    .line 135
    .line 136
    iget-object p1, p1, Lpz3;->n:Ln29;

    .line 137
    .line 138
    new-instance v0, Lq19;

    .line 139
    .line 140
    invoke-virtual {p2}, Lkz3;->a()Lvq;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    new-instance v1, Lz91;

    .line 145
    .line 146
    iget-object v2, p2, Lvq;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v2, Lp50;

    .line 149
    .line 150
    iget-object v3, p2, Lvq;->c:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v3, Ljava/lang/String;

    .line 153
    .line 154
    iget-object p2, p2, Lvq;->d:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p2, Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {v1, v3, p2, v2}, Lz91;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, p0, p1, v1}, Lq19;-><init>(Landroid/content/Context;Ln29;Lz91;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, v7, Lg19;->n:Lq19;

    .line 165
    .line 166
    return-void

    .line 167
    :cond_3
    iput-object v0, v7, Lg19;->n:Lq19;

    .line 168
    .line 169
    return-void
.end method


# virtual methods
.method public final a(Lhs1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lg19;->o(Lhs1;Ljava/lang/RuntimeException;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final b(Lhs1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg19;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lhs1;->f:Lhs1;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lx13;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p0, p0, Lg19;->b:Lne;

    .line 28
    .line 29
    invoke-interface {p0}, Lne;->d()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    throw p0

    .line 34
    :cond_1
    invoke-static {}, Le6;->d()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    invoke-static {v0}, Lly8;->d(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lg19;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    invoke-static {v0}, Lly8;->d(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v0

    .line 15
    :goto_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    move v0, v1

    .line 18
    :cond_1
    if-eq v2, v0, :cond_6

    .line 19
    .line 20
    iget-object p0, p0, Lg19;->a:Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_5

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Le29;

    .line 37
    .line 38
    if-eqz p3, :cond_3

    .line 39
    .line 40
    iget v1, v0, Le29;->a:I

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne v1, v2, :cond_2

    .line 44
    .line 45
    :cond_3
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Le29;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {v0, p2}, Le29;->b(Ljava/lang/Exception;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    return-void

    .line 59
    :cond_6
    const-string p0, "Status XOR exception should be null"

    .line 60
    .line 61
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lg19;->a:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Le29;

    .line 20
    .line 21
    iget-object v5, p0, Lg19;->b:Lne;

    .line 22
    .line 23
    invoke-interface {v5}, Lne;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0, v4}, Lg19;->k(Le29;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lg19;->x:Lpz3;

    .line 6
    .line 7
    iget-object v1, v1, Lpz3;->n:Ln29;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lg19;->i(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lf19;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lf19;-><init>(Lg19;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lg19;->x:Lpz3;

    .line 6
    .line 7
    iget-object v1, v1, Lpz3;->n:Ln29;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lg19;->h()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Lw7;

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    invoke-direct {v0, p0, v2}, Lw7;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v1, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    invoke-static {v1}, Lly8;->d(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lg19;->r:Lhs1;

    .line 10
    .line 11
    sget-object v1, Lhs1;->f:Lhs1;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lg19;->b(Lhs1;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 17
    .line 18
    iget-boolean v1, p0, Lg19;->p:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/16 v1, 0xb

    .line 23
    .line 24
    iget-object v2, p0, Lg19;->c:Ldf;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x9

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lg19;->p:Z

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lg19;->f:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lg19;->e()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lg19;->j()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    invoke-static {v0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    throw p0
.end method

.method public final i(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v1, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    iget-object v2, v0, Lpz3;->n:Ln29;

    .line 6
    .line 7
    invoke-static {v2}, Lly8;->d(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lg19;->r:Lhs1;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iput-boolean v3, p0, Lg19;->p:Z

    .line 15
    .line 16
    iget-object v4, p0, Lg19;->b:Lne;

    .line 17
    .line 18
    invoke-interface {v4}, Lne;->i()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lg19;->d:Lw00;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v7, "The connection to Google Play services was lost"

    .line 30
    .line 31
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-ne p1, v3, :cond_0

    .line 35
    .line 36
    const-string p1, " due to service disconnection."

    .line 37
    .line 38
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v7, 0x3

    .line 43
    if-ne p1, v7, :cond_1

    .line 44
    .line 45
    const-string p1, " due to dead object exception."

    .line 46
    .line 47
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 51
    .line 52
    const-string p1, " Last reason for disconnect: "

    .line 53
    .line 54
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    .line 65
    .line 66
    const/16 v6, 0x14

    .line 67
    .line 68
    invoke-direct {v4, v6, p1, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lhs1;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v3, v4}, Lw00;->x(ZLcom/google/android/gms/common/api/Status;)V

    .line 72
    .line 73
    .line 74
    const/16 p1, 0x9

    .line 75
    .line 76
    iget-object v2, p0, Lg19;->c:Ldf;

    .line 77
    .line 78
    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-wide/16 v3, 0x1388

    .line 83
    .line 84
    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    .line 86
    .line 87
    const/16 p1, 0xb

    .line 88
    .line 89
    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-wide/32 v2, 0x1d4c0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    .line 98
    .line 99
    iget-object p1, v0, Lpz3;->g:Lh80;

    .line 100
    .line 101
    iget-object p1, p1, Lh80;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Landroid/util/SparseIntArray;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lg19;->f:Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-nez p1, :cond_3

    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    invoke-static {p0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    throw p0
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v1, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    iget-object p0, p0, Lg19;->c:Ldf;

    .line 8
    .line 9
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-wide v2, v0, Lpz3;->a:J

    .line 17
    .line 18
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final k(Le29;)Z
    .locals 14

    .line 1
    instance-of v0, p1, Lk19;

    .line 2
    .line 3
    const-string v1, "DeadObjectException thrown while running ApiCallRunner."

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lg19;->d:Lw00;

    .line 9
    .line 10
    iget-object v3, p0, Lg19;->b:Lne;

    .line 11
    .line 12
    invoke-interface {v3}, Lne;->j()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {p1, v0, v4}, Le29;->d(Lw00;Z)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p1, p0}, Le29;->c(Lg19;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :catch_0
    invoke-virtual {p0, v2}, Lg19;->f(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, v1}, Lne;->b(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    move-object v0, p1

    .line 31
    check-cast v0, Lk19;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lk19;->g(Lg19;)[Ly53;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v3, :cond_5

    .line 40
    .line 41
    array-length v6, v3

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    iget-object v6, p0, Lg19;->b:Lne;

    .line 46
    .line 47
    invoke-interface {v6}, Lne;->g()[Ly53;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    new-array v6, v4, [Ly53;

    .line 54
    .line 55
    :cond_2
    new-instance v7, Lk50;

    .line 56
    .line 57
    array-length v8, v6

    .line 58
    invoke-direct {v7, v8}, Ldg7;-><init>(I)V

    .line 59
    .line 60
    .line 61
    move v8, v4

    .line 62
    :goto_0
    array-length v9, v6

    .line 63
    if-ge v8, v9, :cond_3

    .line 64
    .line 65
    aget-object v9, v6, v8

    .line 66
    .line 67
    iget-object v10, v9, Ly53;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v9}, Ly53;->n()J

    .line 70
    .line 71
    .line 72
    move-result-wide v11

    .line 73
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v7, v10, v9}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    add-int/lit8 v8, v8, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    array-length v6, v3

    .line 84
    move v8, v4

    .line 85
    :goto_1
    if-ge v8, v6, :cond_5

    .line 86
    .line 87
    aget-object v9, v3, v8

    .line 88
    .line 89
    iget-object v10, v9, Ly53;->a:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v7, v10}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    check-cast v10, Ljava/lang/Long;

    .line 96
    .line 97
    if-eqz v10, :cond_6

    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v10

    .line 103
    invoke-virtual {v9}, Ly53;->n()J

    .line 104
    .line 105
    .line 106
    move-result-wide v12

    .line 107
    cmp-long v10, v10, v12

    .line 108
    .line 109
    if-gez v10, :cond_4

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    :goto_2
    move-object v9, v5

    .line 116
    :cond_6
    :goto_3
    if-nez v9, :cond_7

    .line 117
    .line 118
    iget-object v0, p0, Lg19;->d:Lw00;

    .line 119
    .line 120
    iget-object v3, p0, Lg19;->b:Lne;

    .line 121
    .line 122
    invoke-interface {v3}, Lne;->j()Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {p1, v0, v4}, Le29;->d(Lw00;Z)V

    .line 127
    .line 128
    .line 129
    :try_start_1
    invoke-virtual {p1, p0}, Le29;->c(Lg19;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    .line 132
    return v2

    .line 133
    :catch_1
    invoke-virtual {p0, v2}, Lg19;->f(I)V

    .line 134
    .line 135
    .line 136
    invoke-interface {v3, v1}, Lne;->b(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return v2

    .line 140
    :cond_7
    iget-object p1, p0, Lg19;->b:Lne;

    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object v1, v9, Ly53;->a:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v9}, Ly53;->n()J

    .line 153
    .line 154
    .line 155
    move-result-wide v6

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, " could not execute call because it requires feature ("

    .line 165
    .line 166
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p1, ", "

    .line 173
    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p1, ")."

    .line 181
    .line 182
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-string v1, "GoogleApiManager"

    .line 190
    .line 191
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lg19;->x:Lpz3;

    .line 195
    .line 196
    iget-boolean p1, p1, Lpz3;->o:Z

    .line 197
    .line 198
    if-eqz p1, :cond_a

    .line 199
    .line 200
    invoke-virtual {v0, p0}, Lk19;->f(Lg19;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-eqz p1, :cond_a

    .line 205
    .line 206
    iget-object p1, p0, Lg19;->c:Ldf;

    .line 207
    .line 208
    new-instance v0, Lh19;

    .line 209
    .line 210
    invoke-direct {v0, p1, v9}, Lh19;-><init>(Ldf;Ly53;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lg19;->q:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    iget-object v1, p0, Lg19;->q:Ljava/util/ArrayList;

    .line 220
    .line 221
    const-wide/16 v2, 0x1388

    .line 222
    .line 223
    const/16 v6, 0xf

    .line 224
    .line 225
    if-ltz p1, :cond_8

    .line 226
    .line 227
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Lh19;

    .line 232
    .line 233
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 234
    .line 235
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 236
    .line 237
    invoke-virtual {v0, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    iget-object p0, p0, Lg19;->x:Lpz3;

    .line 241
    .line 242
    iget-object p0, p0, Lpz3;->n:Ln29;

    .line 243
    .line 244
    invoke-static {p0, v6, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 249
    .line 250
    .line 251
    return v4

    .line 252
    :cond_8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lg19;->x:Lpz3;

    .line 256
    .line 257
    iget-object p1, p1, Lpz3;->n:Ln29;

    .line 258
    .line 259
    invoke-static {p1, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lg19;->x:Lpz3;

    .line 267
    .line 268
    iget-object p1, p1, Lpz3;->n:Ln29;

    .line 269
    .line 270
    const/16 v1, 0x10

    .line 271
    .line 272
    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const-wide/32 v1, 0x1d4c0

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    .line 281
    .line 282
    new-instance p1, Lhs1;

    .line 283
    .line 284
    const/4 v0, 0x2

    .line 285
    invoke-direct {p1, v0, v5, v5}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p1}, Lg19;->l(Lhs1;)Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-nez v0, :cond_9

    .line 293
    .line 294
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 295
    .line 296
    iget p0, p0, Lg19;->k:I

    .line 297
    .line 298
    invoke-virtual {v0, p1, p0}, Lpz3;->d(Lhs1;I)Z

    .line 299
    .line 300
    .line 301
    :cond_9
    return v4

    .line 302
    :cond_a
    new-instance p0, Lgf8;

    .line 303
    .line 304
    invoke-direct {p0, v9}, Lgf8;-><init>(Ly53;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, p0}, Le29;->b(Ljava/lang/Exception;)V

    .line 308
    .line 309
    .line 310
    return v2
.end method

.method public final l(Lhs1;)Z
    .locals 4

    .line 1
    sget-object v0, Lpz3;->r:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lg19;->x:Lpz3;

    .line 5
    .line 6
    iget-object v2, v1, Lpz3;->k:La19;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    iget-object v1, v1, Lpz3;->l:Lp50;

    .line 12
    .line 13
    iget-object v2, p0, Lg19;->c:Ldf;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lp50;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lg19;->x:Lpz3;

    .line 22
    .line 23
    iget-object v1, v1, Lpz3;->k:La19;

    .line 24
    .line 25
    iget p0, p0, Lg19;->k:I

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v2, Lg29;

    .line 31
    .line 32
    invoke-direct {v2, p1, p0}, Lg29;-><init>(Lhs1;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p0, v1, La19;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p0, v1, La19;->c:Ln29;

    .line 45
    .line 46
    new-instance p1, Lj29;

    .line 47
    .line 48
    invoke-direct {p1, v3, v1, v2}, Lj29;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    :goto_0
    monitor-exit v0

    .line 68
    const/4 p0, 0x1

    .line 69
    return p0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    monitor-exit v0

    .line 73
    return v3

    .line 74
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public final m()V
    .locals 12

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v1, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    invoke-static {v1}, Lly8;->d(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lg19;->b:Lne;

    .line 9
    .line 10
    invoke-interface {v1}, Lne;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_a

    .line 15
    .line 16
    invoke-interface {v1}, Lne;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    const/16 v2, 0xa

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    :try_start_0
    iget-object v4, v0, Lpz3;->g:Lh80;

    .line 28
    .line 29
    iget-object v5, v0, Lpz3;->e:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v6, v4, Lh80;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v6, Landroid/util/SparseIntArray;

    .line 34
    .line 35
    invoke-static {v5}, Lly8;->h(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Lne;->f()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    iget-object v8, v4, Lh80;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v8, Landroid/util/SparseIntArray;

    .line 45
    .line 46
    const/4 v9, -0x1

    .line 47
    invoke-virtual {v8, v7, v9}, Landroid/util/SparseIntArray;->get(II)I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eq v8, v9, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const/4 v8, 0x0

    .line 55
    move v10, v8

    .line 56
    :goto_0
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-ge v10, v11, :cond_3

    .line 61
    .line 62
    invoke-virtual {v6, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    if-le v11, v7, :cond_2

    .line 67
    .line 68
    invoke-virtual {v6, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-nez v11, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v8, v9

    .line 79
    :goto_1
    if-ne v8, v9, :cond_4

    .line 80
    .line 81
    iget-object v4, v4, Lh80;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, Llz3;

    .line 84
    .line 85
    invoke-virtual {v4, v5, v7}, Lmz3;->c(Landroid/content/Context;I)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    move v8, v4

    .line 90
    :cond_4
    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    .line 92
    .line 93
    :goto_2
    if-eqz v8, :cond_5

    .line 94
    .line 95
    new-instance v0, Lhs1;

    .line 96
    .line 97
    invoke-direct {v0, v8, v3, v3}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v4, "GoogleApiManager"

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0}, Lhs1;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v7, "The service for "

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, " is not available: "

    .line 128
    .line 129
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0, v3}, Lg19;->o(Lhs1;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    goto :goto_5

    .line 148
    :cond_5
    new-instance v4, Lw86;

    .line 149
    .line 150
    iget-object v5, p0, Lg19;->c:Ldf;

    .line 151
    .line 152
    invoke-direct {v4, v0, v1, v5}, Lw86;-><init>(Lpz3;Lne;Ldf;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1}, Lne;->j()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_9

    .line 160
    .line 161
    iget-object v10, p0, Lg19;->n:Lq19;

    .line 162
    .line 163
    invoke-static {v10}, Lly8;->h(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, v10, Lq19;->c:Landroid/os/Handler;

    .line 167
    .line 168
    iget-object v8, v10, Lq19;->f:Lz91;

    .line 169
    .line 170
    iget-object v5, v10, Lq19;->k:Lif7;

    .line 171
    .line 172
    if-eqz v5, :cond_6

    .line 173
    .line 174
    invoke-virtual {v5}, Laz3;->m()V

    .line 175
    .line 176
    .line 177
    :cond_6
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    iput-object v5, v8, Lz91;->f:Ljava/lang/Integer;

    .line 186
    .line 187
    iget-object v5, v10, Lq19;->d:Lw09;

    .line 188
    .line 189
    iget-object v6, v10, Lq19;->b:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    iget-object v9, v8, Lz91;->e:Lkf7;

    .line 196
    .line 197
    move-object v11, v10

    .line 198
    invoke-virtual/range {v5 .. v11}, Lw09;->b(Landroid/content/Context;Landroid/os/Looper;Lz91;Ljava/lang/Object;Lnz3;Loz3;)Lne;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Lif7;

    .line 203
    .line 204
    iput-object v5, v10, Lq19;->k:Lif7;

    .line 205
    .line 206
    iput-object v4, v10, Lq19;->n:Lw86;

    .line 207
    .line 208
    iget-object v5, v10, Lq19;->e:Ljava/util/Set;

    .line 209
    .line 210
    if-eqz v5, :cond_8

    .line 211
    .line 212
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-eqz v5, :cond_7

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_7
    iget-object v0, v10, Lq19;->k:Lif7;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v5, Lkm5;

    .line 225
    .line 226
    invoke-direct {v5, v0}, Lkm5;-><init>(Laz3;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v5}, Laz3;->e(Lsl0;)V

    .line 230
    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_8
    :goto_3
    new-instance v5, Lib0;

    .line 234
    .line 235
    const/16 v6, 0xc

    .line 236
    .line 237
    invoke-direct {v5, v10, v6}, Lib0;-><init>(Ljava/lang/Object;I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    .line 242
    .line 243
    :cond_9
    :goto_4
    :try_start_1
    invoke-interface {v1, v4}, Lne;->e(Lsl0;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :catch_1
    move-exception v0

    .line 248
    new-instance v1, Lhs1;

    .line 249
    .line 250
    invoke-direct {v1, v2, v3, v3}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0, v1, v0}, Lg19;->o(Lhs1;Ljava/lang/RuntimeException;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :goto_5
    new-instance v1, Lhs1;

    .line 258
    .line 259
    invoke-direct {v1, v2, v3, v3}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, v1, v0}, Lg19;->o(Lhs1;Ljava/lang/RuntimeException;)V

    .line 263
    .line 264
    .line 265
    :cond_a
    :goto_6
    return-void
.end method

.method public final n(Le29;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    invoke-static {v0}, Lly8;->d(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lg19;->b:Lne;

    .line 9
    .line 10
    invoke-interface {v0}, Lne;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lg19;->a:Ljava/util/LinkedList;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lg19;->k(Le29;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lg19;->j()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lg19;->r:Lhs1;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget v0, p1, Lhs1;->b:I

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p1, Lhs1;->c:Landroid/app/PendingIntent;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lg19;->o(Lhs1;Ljava/lang/RuntimeException;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-virtual {p0}, Lg19;->m()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final o(Lhs1;Ljava/lang/RuntimeException;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    invoke-static {v0}, Lly8;->d(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lg19;->n:Lq19;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lq19;->k:Lif7;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Laz3;->m()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 20
    .line 21
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 22
    .line 23
    invoke-static {v0}, Lly8;->d(Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lg19;->r:Lhs1;

    .line 28
    .line 29
    iget-object v1, p0, Lg19;->x:Lpz3;

    .line 30
    .line 31
    iget-object v1, v1, Lpz3;->g:Lh80;

    .line 32
    .line 33
    iget-object v1, v1, Lh80;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lg19;->b(Lhs1;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lg19;->b:Lne;

    .line 44
    .line 45
    instance-of v1, v1, Lk29;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget v1, p1, Lhs1;->b:I

    .line 51
    .line 52
    const/16 v3, 0x18

    .line 53
    .line 54
    if-eq v1, v3, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lg19;->x:Lpz3;

    .line 57
    .line 58
    iput-boolean v2, v1, Lpz3;->b:Z

    .line 59
    .line 60
    iget-object v1, v1, Lpz3;->n:Ln29;

    .line 61
    .line 62
    const/16 v3, 0x13

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-wide/32 v4, 0x493e0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    iget v1, p1, Lhs1;->b:I

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    if-ne v1, v3, :cond_2

    .line 78
    .line 79
    sget-object p1, Lpz3;->q:Lcom/google/android/gms/common/api/Status;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lg19;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    iget-object v1, p0, Lg19;->a:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iput-object p1, p0, Lg19;->r:Lhs1;

    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    iget-object v1, p0, Lg19;->x:Lpz3;

    .line 97
    .line 98
    if-eqz p2, :cond_4

    .line 99
    .line 100
    iget-object p1, v1, Lpz3;->n:Ln29;

    .line 101
    .line 102
    invoke-static {p1}, Lly8;->d(Landroid/os/Handler;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    invoke-virtual {p0, v0, p2, p1}, Lg19;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    iget-boolean p2, v1, Lpz3;->o:Z

    .line 111
    .line 112
    iget-object v1, p0, Lg19;->c:Ldf;

    .line 113
    .line 114
    if-eqz p2, :cond_9

    .line 115
    .line 116
    invoke-static {v1, p1}, Lpz3;->e(Ldf;Lhs1;)Lcom/google/android/gms/common/api/Status;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p0, p2, v0, v2}, Lg19;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lg19;->a:Ljava/util/LinkedList;

    .line 124
    .line 125
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {p0, p1}, Lg19;->l(Lhs1;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-nez p2, :cond_8

    .line 137
    .line 138
    iget-object p2, p0, Lg19;->x:Lpz3;

    .line 139
    .line 140
    iget v0, p0, Lg19;->k:I

    .line 141
    .line 142
    invoke-virtual {p2, p1, v0}, Lpz3;->d(Lhs1;I)Z

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    if-nez p2, :cond_8

    .line 147
    .line 148
    iget p2, p1, Lhs1;->b:I

    .line 149
    .line 150
    const/16 v0, 0x12

    .line 151
    .line 152
    if-ne p2, v0, :cond_6

    .line 153
    .line 154
    iput-boolean v2, p0, Lg19;->p:Z

    .line 155
    .line 156
    :cond_6
    iget-boolean p2, p0, Lg19;->p:Z

    .line 157
    .line 158
    if-eqz p2, :cond_7

    .line 159
    .line 160
    iget-object p1, p0, Lg19;->x:Lpz3;

    .line 161
    .line 162
    iget-object p0, p0, Lg19;->c:Ldf;

    .line 163
    .line 164
    iget-object p1, p1, Lpz3;->n:Ln29;

    .line 165
    .line 166
    const/16 p2, 0x9

    .line 167
    .line 168
    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    const-wide/16 v0, 0x1388

    .line 173
    .line 174
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_7
    iget-object p2, p0, Lg19;->c:Ldf;

    .line 179
    .line 180
    invoke-static {p2, p1}, Lpz3;->e(Ldf;Lhs1;)Lcom/google/android/gms/common/api/Status;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lg19;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    :goto_0
    return-void

    .line 188
    :cond_9
    invoke-static {v1, p1}, Lpz3;->e(Ldf;Lhs1;)Lcom/google/android/gms/common/api/Status;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Lg19;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final p(Lhs1;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    invoke-static {v0}, Lly8;->d(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lg19;->b:Lne;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "onSignInFailed for "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " with "

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lne;->b(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lg19;->o(Lhs1;Ljava/lang/RuntimeException;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg19;->x:Lpz3;

    .line 2
    .line 3
    iget-object v0, v0, Lpz3;->n:Ln29;

    .line 4
    .line 5
    invoke-static {v0}, Lly8;->d(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lpz3;->p:Lcom/google/android/gms/common/api/Status;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lg19;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lg19;->d:Lw00;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2, v0}, Lw00;->x(ZLcom/google/android/gms/common/api/Status;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lg19;->f:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-array v1, v2, [Luy4;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, [Luy4;

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_0

    .line 35
    .line 36
    aget-object v3, v0, v2

    .line 37
    .line 38
    new-instance v3, Lc29;

    .line 39
    .line 40
    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 41
    .line 42
    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Lc29;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lg19;->n(Le29;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lhs1;

    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v0, v1, v2, v2}, Lhs1;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lg19;->b(Lhs1;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lg19;->b:Lne;

    .line 65
    .line 66
    invoke-interface {v0}, Lne;->isConnected()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    new-instance v1, Lom5;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lom5;-><init>(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1}, Lne;->h(Lom5;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method
