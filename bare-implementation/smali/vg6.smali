.class public final Lvg6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvg6;->h:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lvg6;->c:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lvg6;->d:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lvg6;->e:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lvg6;->f:Ljava/lang/Object;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lvg6;->a:I

    .line 31
    .line 32
    iput p1, p0, Lvg6;->b:I

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lrx8;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lvg6;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lvg6;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lvg6;->d:Ljava/lang/Object;

    iput-object v0, p0, Lvg6;->e:Ljava/lang/Object;

    iput-object v0, p0, Lvg6;->f:Ljava/lang/Object;

    iput-object v0, p0, Lvg6;->g:Ljava/lang/Object;

    iput-object v0, p0, Lvg6;->h:Ljava/lang/Object;

    iput-object p1, p0, Lvg6;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lfh6;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->k(Lfh6;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lfh6;->a:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Lvg6;->h:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->E0:Lhh6;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Lhh6;->j()Lw5;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v4, v2, Lgh6;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    check-cast v2, Lgh6;

    .line 24
    .line 25
    iget-object v2, v2, Lgh6;->e:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lw5;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    invoke-static {v0, v2}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    if-eqz p2, :cond_4

    .line 39
    .line 40
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->G:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-gtz v2, :cond_3

    .line 47
    .line 48
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Lla;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lla;->g(Lfh6;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "dispatchViewRecycled: "

    .line 64
    .line 65
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string v1, "RecyclerView"

    .line 76
    .line 77
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 p0, 0x0

    .line 82
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Le6;->d()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    :goto_1
    iput-object v3, p1, Lfh6;->s:Lhg6;

    .line 94
    .line 95
    iput-object v3, p1, Lfh6;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 96
    .line 97
    invoke-virtual {p0}, Lvg6;->c()Lug6;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iget p2, p1, Lfh6;->f:I

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Lug6;->a(I)Ltg6;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v1, v1, Ltg6;->a:Ljava/util/ArrayList;

    .line 111
    .line 112
    iget-object p0, p0, Lug6;->a:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    check-cast p0, Ltg6;

    .line 119
    .line 120
    iget p0, p0, Ltg6;->b:I

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-gt p0, p2, :cond_5

    .line 127
    .line 128
    invoke-static {v0}, Lji8;->d(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->S0:Z

    .line 133
    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-nez p0, :cond_6

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    const-string p0, "this scrap item already exists"

    .line 144
    .line 145
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lfh6;->n()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public b(I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lvg6;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lbh6;->b()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge p1, v1, :cond_1

    .line 14
    .line 15
    iget-boolean v0, v0, Lbh6;->g:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Lx9;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lx9;->f(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "invalid position "

    .line 31
    .line 32
    const-string v3, ". State item count is "

    .line 33
    .line 34
    invoke-static {p1, v2, v3}, Ldj7;->r(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0}, Lbh6;->b()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method

.method public c()Lug6;
    .locals 2

    .line 1
    iget-object v0, p0, Lvg6;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lug6;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lug6;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lug6;->a:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lug6;->b:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lug6;->c:Ljava/util/Set;

    .line 32
    .line 33
    iput-object v0, p0, Lvg6;->g:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p0}, Lvg6;->e()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lvg6;->g:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lug6;

    .line 41
    .line 42
    return-object p0
.end method

.method public d(I)Landroid/view/View;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lvg6;->l(IJ)Lfh6;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lfh6;->a:Landroid/view/View;

    .line 11
    .line 12
    return-object p0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvg6;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lug6;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lvg6;->h:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->K:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p0, v0, Lug6;->c:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public f(Lhg6;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lvg6;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lug6;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lug6;->a:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget-object p0, p0, Lug6;->c:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    move p1, p0

    .line 24
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ge p1, p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Ltg6;

    .line 39
    .line 40
    iget-object p2, p2, Ltg6;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    move v1, p0

    .line 43
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge v1, v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lfh6;

    .line 54
    .line 55
    iget-object v2, v2, Lfh6;->a:Landroid/view/View;

    .line 56
    .line 57
    invoke-static {v2}, Lji8;->d(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lvg6;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lvg6;->h(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->X0:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lvg6;->h:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->w0:Lru3;

    .line 31
    .line 32
    iget-object v0, p0, Lru3;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [I

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lru3;->d:I

    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public h(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvg6;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 6
    .line 7
    const-string v2, "RecyclerView"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Recycling cached view at index "

    .line 14
    .line 15
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lfh6;

    .line 33
    .line 34
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v4, "CachedViewHolder to be recycled: "

    .line 41
    .line 42
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    const/4 v2, 0x1

    .line 56
    invoke-virtual {p0, v1, v2}, Lvg6;->a(Lfh6;Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvg6;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lfh6;->k()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Lfh6;->j()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, v1, Lfh6;->n:Lvg6;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lvg6;->m(Lfh6;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v1}, Lfh6;->q()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget p1, v1, Lfh6;->j:I

    .line 38
    .line 39
    and-int/lit8 p1, p1, -0x21

    .line 40
    .line 41
    iput p1, v1, Lfh6;->j:I

    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lvg6;->j(Lfh6;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lng6;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Lfh6;->h()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lng6;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lng6;->d(Lfh6;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public j(Lfh6;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lvg6;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lvg6;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->w0:Lru3;

    .line 10
    .line 11
    invoke-virtual {p1}, Lfh6;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, p1, Lfh6;->a:Landroid/view/View;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x1

    .line 19
    if-nez v3, :cond_12

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto/16 :goto_a

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lfh6;->k()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_11

    .line 34
    .line 35
    invoke-virtual {p1}, Lfh6;->p()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_10

    .line 40
    .line 41
    iget v3, p1, Lfh6;->j:I

    .line 42
    .line 43
    and-int/lit8 v3, v3, 0x10

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    sget-object v3, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/View;->hasTransientState()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    move v3, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v3, v5

    .line 58
    :goto_0
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->S0:Z

    .line 59
    .line 60
    if-eqz v7, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v0, "cached view received recycle internal? "

    .line 72
    .line 73
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Lm0;->i(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lfh6;->h()Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_d

    .line 92
    .line 93
    iget v7, p0, Lvg6;->b:I

    .line 94
    .line 95
    if-lez v7, :cond_b

    .line 96
    .line 97
    iget v7, p1, Lfh6;->j:I

    .line 98
    .line 99
    and-int/lit16 v7, v7, 0x20e

    .line 100
    .line 101
    if-eqz v7, :cond_4

    .line 102
    .line 103
    goto :goto_6

    .line 104
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    iget v8, p0, Lvg6;->b:I

    .line 109
    .line 110
    if-lt v7, v8, :cond_5

    .line 111
    .line 112
    if-lez v7, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0, v5}, Lvg6;->h(I)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v7, v7, -0x1

    .line 118
    .line 119
    :cond_5
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->X0:Z

    .line 120
    .line 121
    if-eqz v8, :cond_a

    .line 122
    .line 123
    if-lez v7, :cond_a

    .line 124
    .line 125
    iget v8, p1, Lfh6;->c:I

    .line 126
    .line 127
    iget-object v9, v2, Lru3;->e:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v9, [I

    .line 130
    .line 131
    if-eqz v9, :cond_7

    .line 132
    .line 133
    iget v9, v2, Lru3;->d:I

    .line 134
    .line 135
    mul-int/lit8 v9, v9, 0x2

    .line 136
    .line 137
    move v10, v5

    .line 138
    :goto_2
    if-ge v10, v9, :cond_7

    .line 139
    .line 140
    iget-object v11, v2, Lru3;->e:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v11, [I

    .line 143
    .line 144
    aget v11, v11, v10

    .line 145
    .line 146
    if-ne v11, v8, :cond_6

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_6
    add-int/lit8 v10, v10, 0x2

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    add-int/lit8 v7, v7, -0x1

    .line 153
    .line 154
    :goto_3
    if-ltz v7, :cond_9

    .line 155
    .line 156
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    check-cast v8, Lfh6;

    .line 161
    .line 162
    iget v8, v8, Lfh6;->c:I

    .line 163
    .line 164
    iget-object v9, v2, Lru3;->e:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v9, [I

    .line 167
    .line 168
    if-eqz v9, :cond_9

    .line 169
    .line 170
    iget v9, v2, Lru3;->d:I

    .line 171
    .line 172
    mul-int/lit8 v9, v9, 0x2

    .line 173
    .line 174
    move v10, v5

    .line 175
    :goto_4
    if-ge v10, v9, :cond_9

    .line 176
    .line 177
    iget-object v11, v2, Lru3;->e:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v11, [I

    .line 180
    .line 181
    aget v11, v11, v10

    .line 182
    .line 183
    if-ne v11, v8, :cond_8

    .line 184
    .line 185
    add-int/lit8 v7, v7, -0x1

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_8
    add-int/lit8 v10, v10, 0x2

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_9
    add-int/2addr v7, v6

    .line 192
    :cond_a
    :goto_5
    invoke-virtual {v0, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    move v0, v6

    .line 196
    goto :goto_7

    .line 197
    :cond_b
    :goto_6
    move v0, v5

    .line 198
    :goto_7
    if-nez v0, :cond_c

    .line 199
    .line 200
    invoke-virtual {p0, p1, v6}, Lvg6;->a(Lfh6;Z)V

    .line 201
    .line 202
    .line 203
    :goto_8
    move v5, v0

    .line 204
    goto :goto_9

    .line 205
    :cond_c
    move v6, v5

    .line 206
    goto :goto_8

    .line 207
    :cond_d
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 208
    .line 209
    if-eqz p0, :cond_e

    .line 210
    .line 211
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    const-string v0, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    .line 216
    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    const-string v0, "RecyclerView"

    .line 222
    .line 223
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :cond_e
    move v6, v5

    .line 227
    :goto_9
    iget-object p0, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Lla;

    .line 228
    .line 229
    invoke-virtual {p0, p1}, Lla;->g(Lfh6;)V

    .line 230
    .line 231
    .line 232
    if-nez v5, :cond_f

    .line 233
    .line 234
    if-nez v6, :cond_f

    .line 235
    .line 236
    if-eqz v3, :cond_f

    .line 237
    .line 238
    invoke-static {v4}, Lji8;->d(Landroid/view/View;)V

    .line 239
    .line 240
    .line 241
    const/4 p0, 0x0

    .line 242
    iput-object p0, p1, Lfh6;->s:Lhg6;

    .line 243
    .line 244
    iput-object p0, p1, Lfh6;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 245
    .line 246
    :cond_f
    return-void

    .line 247
    :cond_10
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    const-string p1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 252
    .line 253
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v0, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 264
    .line 265
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    invoke-static {p0, p1}, Lm0;->i(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_12
    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 280
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    .line 284
    .line 285
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Lfh6;->j()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string p1, " isAttached:"

    .line 296
    .line 297
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    if-eqz p1, :cond_13

    .line 305
    .line 306
    move v5, v6

    .line 307
    :cond_13
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw p0
.end method

.method public k(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvg6;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v1, p1, Lfh6;->j:I

    .line 10
    .line 11
    and-int/lit8 v1, v1, 0xc

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lfh6;->l()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lng6;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Lfh6;->d()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v1, Lcf2;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget-boolean v1, v1, Lcf2;->g:Z

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Lfh6;->g()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lvg6;->d:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lvg6;->d:Ljava/lang/Object;

    .line 61
    .line 62
    :cond_2
    iput-object p0, p1, Lfh6;->n:Lvg6;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p1, Lfh6;->o:Z

    .line 66
    .line 67
    iget-object p0, p0, Lvg6;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lfh6;->g()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1}, Lfh6;->i()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 88
    .line 89
    iget-boolean v1, v1, Lhg6;->b:Z

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string p1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    :goto_1
    iput-object p0, p1, Lfh6;->n:Lvg6;

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p1, Lfh6;->o:Z

    .line 112
    .line 113
    iget-object p0, p0, Lvg6;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public l(IJ)Lfh6;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lvg6;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v3, v0, Lvg6;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v4, v0, Lvg6;->h:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 18
    .line 19
    if-ltz v1, :cond_5a

    .line 20
    .line 21
    invoke-virtual {v5}, Lbh6;->b()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-ge v1, v6, :cond_5a

    .line 26
    .line 27
    iget-boolean v6, v5, Lbh6;->g:Z

    .line 28
    .line 29
    const/16 v7, 0x20

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    if-eqz v6, :cond_7

    .line 33
    .line 34
    iget-object v6, v0, Lvg6;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v6, Ljava/util/ArrayList;

    .line 37
    .line 38
    if-eqz v6, :cond_5

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    move v11, v10

    .line 49
    :goto_0
    if-ge v11, v6, :cond_2

    .line 50
    .line 51
    iget-object v12, v0, Lvg6;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v12, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    check-cast v12, Lfh6;

    .line 60
    .line 61
    invoke-virtual {v12}, Lfh6;->q()Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-nez v13, :cond_1

    .line 66
    .line 67
    invoke-virtual {v12}, Lfh6;->c()I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    if-ne v13, v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v12, v7}, Lfh6;->a(I)V

    .line 74
    .line 75
    .line 76
    const/4 v15, 0x0

    .line 77
    const/16 v16, 0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 84
    .line 85
    iget-boolean v11, v11, Lhg6;->b:Z

    .line 86
    .line 87
    if-eqz v11, :cond_5

    .line 88
    .line 89
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->e:Lx9;

    .line 90
    .line 91
    invoke-virtual {v11, v1, v10}, Lx9;->f(II)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-lez v11, :cond_5

    .line 96
    .line 97
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 98
    .line 99
    invoke-virtual {v12}, Lhg6;->b()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-ge v11, v12, :cond_5

    .line 104
    .line 105
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 106
    .line 107
    invoke-virtual {v12, v11}, Lhg6;->c(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v11

    .line 111
    move v13, v10

    .line 112
    :goto_1
    if-ge v13, v6, :cond_5

    .line 113
    .line 114
    iget-object v14, v0, Lvg6;->d:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v14, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    check-cast v14, Lfh6;

    .line 123
    .line 124
    invoke-virtual {v14}, Lfh6;->q()Z

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    if-nez v15, :cond_3

    .line 129
    .line 130
    const/4 v15, 0x0

    .line 131
    const/16 v16, 0x1

    .line 132
    .line 133
    iget-wide v8, v14, Lfh6;->e:J

    .line 134
    .line 135
    cmp-long v8, v8, v11

    .line 136
    .line 137
    if-nez v8, :cond_4

    .line 138
    .line 139
    invoke-virtual {v14, v7}, Lfh6;->a(I)V

    .line 140
    .line 141
    .line 142
    move-object v12, v14

    .line 143
    goto :goto_3

    .line 144
    :cond_3
    const/4 v15, 0x0

    .line 145
    const/16 v16, 0x1

    .line 146
    .line 147
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    :goto_2
    const/4 v15, 0x0

    .line 151
    const/16 v16, 0x1

    .line 152
    .line 153
    move-object v12, v15

    .line 154
    :goto_3
    if-eqz v12, :cond_6

    .line 155
    .line 156
    move/from16 v6, v16

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_6
    move v6, v10

    .line 160
    goto :goto_4

    .line 161
    :cond_7
    const/4 v15, 0x0

    .line 162
    const/16 v16, 0x1

    .line 163
    .line 164
    move v6, v10

    .line 165
    move-object v12, v15

    .line 166
    :goto_4
    const-string v8, "RecyclerView"

    .line 167
    .line 168
    if-nez v12, :cond_21

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    move v11, v10

    .line 175
    :goto_5
    if-ge v11, v9, :cond_a

    .line 176
    .line 177
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    check-cast v12, Lfh6;

    .line 182
    .line 183
    invoke-virtual {v12}, Lfh6;->q()Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-nez v13, :cond_9

    .line 188
    .line 189
    invoke-virtual {v12}, Lfh6;->c()I

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    if-ne v13, v1, :cond_9

    .line 194
    .line 195
    invoke-virtual {v12}, Lfh6;->g()Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    if-nez v13, :cond_9

    .line 200
    .line 201
    iget-boolean v13, v5, Lbh6;->g:Z

    .line 202
    .line 203
    if-nez v13, :cond_8

    .line 204
    .line 205
    invoke-virtual {v12}, Lfh6;->i()Z

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-nez v13, :cond_9

    .line 210
    .line 211
    :cond_8
    invoke-virtual {v12, v7}, Lfh6;->a(I)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v17, v15

    .line 215
    .line 216
    move-object v15, v12

    .line 217
    goto/16 :goto_b

    .line 218
    .line 219
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 223
    .line 224
    iget-object v9, v9, Lj61;->c:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    move v12, v10

    .line 231
    :goto_6
    if-ge v12, v11, :cond_c

    .line 232
    .line 233
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    check-cast v13, Landroid/view/View;

    .line 238
    .line 239
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 240
    .line 241
    .line 242
    move-result-object v14

    .line 243
    move-object/from16 v17, v15

    .line 244
    .line 245
    invoke-virtual {v14}, Lfh6;->c()I

    .line 246
    .line 247
    .line 248
    move-result v15

    .line 249
    if-ne v15, v1, :cond_b

    .line 250
    .line 251
    invoke-virtual {v14}, Lfh6;->g()Z

    .line 252
    .line 253
    .line 254
    move-result v15

    .line 255
    if-nez v15, :cond_b

    .line 256
    .line 257
    invoke-virtual {v14}, Lfh6;->i()Z

    .line 258
    .line 259
    .line 260
    move-result v14

    .line 261
    if-nez v14, :cond_b

    .line 262
    .line 263
    move-object v15, v13

    .line 264
    goto :goto_7

    .line 265
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 266
    .line 267
    move-object/from16 v15, v17

    .line 268
    .line 269
    goto :goto_6

    .line 270
    :cond_c
    move-object/from16 v17, v15

    .line 271
    .line 272
    :goto_7
    if-eqz v15, :cond_12

    .line 273
    .line 274
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 279
    .line 280
    iget-object v12, v11, Lj61;->b:Li61;

    .line 281
    .line 282
    iget-object v13, v11, Lj61;->a:Lom5;

    .line 283
    .line 284
    iget-object v13, v13, Lom5;->a:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    .line 287
    .line 288
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    if-ltz v13, :cond_11

    .line 293
    .line 294
    invoke-virtual {v12, v13}, Li61;->d(I)Z

    .line 295
    .line 296
    .line 297
    move-result v14

    .line 298
    if-eqz v14, :cond_10

    .line 299
    .line 300
    invoke-virtual {v12, v13}, Li61;->a(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11, v15}, Lj61;->k(Landroid/view/View;)V

    .line 304
    .line 305
    .line 306
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 307
    .line 308
    iget-object v12, v11, Lj61;->b:Li61;

    .line 309
    .line 310
    iget-object v11, v11, Lj61;->a:Lom5;

    .line 311
    .line 312
    iget-object v11, v11, Lom5;->a:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 315
    .line 316
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 317
    .line 318
    .line 319
    move-result v11

    .line 320
    const/4 v13, -0x1

    .line 321
    if-ne v11, v13, :cond_d

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_d
    invoke-virtual {v12, v11}, Li61;->d(I)Z

    .line 325
    .line 326
    .line 327
    move-result v14

    .line 328
    if-eqz v14, :cond_e

    .line 329
    .line 330
    :goto_8
    move v11, v13

    .line 331
    goto :goto_9

    .line 332
    :cond_e
    invoke-virtual {v12, v11}, Li61;->b(I)I

    .line 333
    .line 334
    .line 335
    move-result v12

    .line 336
    sub-int/2addr v11, v12

    .line 337
    :goto_9
    if-eq v11, v13, :cond_f

    .line 338
    .line 339
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 340
    .line 341
    invoke-virtual {v12, v11}, Lj61;->c(I)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v15}, Lvg6;->k(Landroid/view/View;)V

    .line 345
    .line 346
    .line 347
    const/16 v11, 0x2020

    .line 348
    .line 349
    invoke-virtual {v9, v11}, Lfh6;->a(I)V

    .line 350
    .line 351
    .line 352
    move-object v15, v9

    .line 353
    goto :goto_b

    .line 354
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    const-string v1, "layout index should not be -1 after unhiding a view:"

    .line 357
    .line 358
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-static {v0, v1}, Lf6;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    return-object v17

    .line 372
    :cond_10
    const-string v0, "trying to unhide a view that was not hidden"

    .line 373
    .line 374
    invoke-static {v15, v0}, Lc6;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    return-object v17

    .line 378
    :cond_11
    const-string v0, "view is not a child, cannot hide "

    .line 379
    .line 380
    invoke-static {v15, v0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return-object v17

    .line 384
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 385
    .line 386
    .line 387
    move-result v9

    .line 388
    move v11, v10

    .line 389
    :goto_a
    if-ge v11, v9, :cond_14

    .line 390
    .line 391
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v12

    .line 395
    move-object v15, v12

    .line 396
    check-cast v15, Lfh6;

    .line 397
    .line 398
    invoke-virtual {v15}, Lfh6;->g()Z

    .line 399
    .line 400
    .line 401
    move-result v12

    .line 402
    if-nez v12, :cond_13

    .line 403
    .line 404
    invoke-virtual {v15}, Lfh6;->c()I

    .line 405
    .line 406
    .line 407
    move-result v12

    .line 408
    if-ne v12, v1, :cond_13

    .line 409
    .line 410
    invoke-virtual {v15}, Lfh6;->e()Z

    .line 411
    .line 412
    .line 413
    move-result v12

    .line 414
    if-nez v12, :cond_13

    .line 415
    .line 416
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 420
    .line 421
    if-eqz v9, :cond_15

    .line 422
    .line 423
    new-instance v9, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v11, "getScrapOrHiddenOrCachedHolderForPosition("

    .line 426
    .line 427
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v11, ") found match in cache: "

    .line 434
    .line 435
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v9

    .line 445
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    goto :goto_b

    .line 449
    :cond_13
    add-int/lit8 v11, v11, 0x1

    .line 450
    .line 451
    goto :goto_a

    .line 452
    :cond_14
    move-object/from16 v15, v17

    .line 453
    .line 454
    :cond_15
    :goto_b
    if-eqz v15, :cond_20

    .line 455
    .line 456
    invoke-virtual {v15}, Lfh6;->i()Z

    .line 457
    .line 458
    .line 459
    move-result v9

    .line 460
    if-eqz v9, :cond_18

    .line 461
    .line 462
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->S0:Z

    .line 463
    .line 464
    if-eqz v9, :cond_17

    .line 465
    .line 466
    iget-boolean v9, v5, Lbh6;->g:Z

    .line 467
    .line 468
    if-eqz v9, :cond_16

    .line 469
    .line 470
    goto :goto_c

    .line 471
    :cond_16
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    const-string v1, "should not receive a removed view unless it is pre layout"

    .line 476
    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v0}, Ll0;->e(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    return-object v17

    .line 485
    :cond_17
    :goto_c
    iget-boolean v9, v5, Lbh6;->g:Z

    .line 486
    .line 487
    goto :goto_d

    .line 488
    :cond_18
    iget v9, v15, Lfh6;->c:I

    .line 489
    .line 490
    if-ltz v9, :cond_1f

    .line 491
    .line 492
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 493
    .line 494
    invoke-virtual {v11}, Lhg6;->b()I

    .line 495
    .line 496
    .line 497
    move-result v11

    .line 498
    if-ge v9, v11, :cond_1f

    .line 499
    .line 500
    iget-boolean v9, v5, Lbh6;->g:Z

    .line 501
    .line 502
    if-nez v9, :cond_1a

    .line 503
    .line 504
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 505
    .line 506
    iget v11, v15, Lfh6;->c:I

    .line 507
    .line 508
    invoke-virtual {v9, v11}, Lhg6;->d(I)I

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    iget v11, v15, Lfh6;->f:I

    .line 513
    .line 514
    if-eq v9, v11, :cond_1a

    .line 515
    .line 516
    :cond_19
    move v9, v10

    .line 517
    goto :goto_d

    .line 518
    :cond_1a
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 519
    .line 520
    iget-boolean v11, v9, Lhg6;->b:Z

    .line 521
    .line 522
    if-eqz v11, :cond_1b

    .line 523
    .line 524
    iget-wide v11, v15, Lfh6;->e:J

    .line 525
    .line 526
    iget v13, v15, Lfh6;->c:I

    .line 527
    .line 528
    invoke-virtual {v9, v13}, Lhg6;->c(I)J

    .line 529
    .line 530
    .line 531
    move-result-wide v13

    .line 532
    cmp-long v9, v11, v13

    .line 533
    .line 534
    if-nez v9, :cond_19

    .line 535
    .line 536
    :cond_1b
    move/from16 v9, v16

    .line 537
    .line 538
    :goto_d
    if-nez v9, :cond_1e

    .line 539
    .line 540
    const/4 v9, 0x4

    .line 541
    invoke-virtual {v15, v9}, Lfh6;->a(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {v15}, Lfh6;->j()Z

    .line 545
    .line 546
    .line 547
    move-result v9

    .line 548
    if-eqz v9, :cond_1c

    .line 549
    .line 550
    iget-object v9, v15, Lfh6;->a:Landroid/view/View;

    .line 551
    .line 552
    invoke-virtual {v4, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 553
    .line 554
    .line 555
    iget-object v9, v15, Lfh6;->n:Lvg6;

    .line 556
    .line 557
    invoke-virtual {v9, v15}, Lvg6;->m(Lfh6;)V

    .line 558
    .line 559
    .line 560
    goto :goto_e

    .line 561
    :cond_1c
    invoke-virtual {v15}, Lfh6;->q()Z

    .line 562
    .line 563
    .line 564
    move-result v9

    .line 565
    if-eqz v9, :cond_1d

    .line 566
    .line 567
    iget v9, v15, Lfh6;->j:I

    .line 568
    .line 569
    and-int/lit8 v9, v9, -0x21

    .line 570
    .line 571
    iput v9, v15, Lfh6;->j:I

    .line 572
    .line 573
    :cond_1d
    :goto_e
    invoke-virtual {v0, v15}, Lvg6;->j(Lfh6;)V

    .line 574
    .line 575
    .line 576
    move-object/from16 v12, v17

    .line 577
    .line 578
    goto :goto_f

    .line 579
    :cond_1e
    move-object v12, v15

    .line 580
    move/from16 v6, v16

    .line 581
    .line 582
    goto :goto_f

    .line 583
    :cond_1f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 584
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    .line 588
    .line 589
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    throw v0

    .line 610
    :cond_20
    move-object v12, v15

    .line 611
    goto :goto_f

    .line 612
    :cond_21
    move-object/from16 v17, v15

    .line 613
    .line 614
    :goto_f
    const-wide/16 v18, 0x4

    .line 615
    .line 616
    const-wide/16 v20, 0x0

    .line 617
    .line 618
    const-wide v22, 0x7fffffffffffffffL

    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    if-nez v12, :cond_37

    .line 624
    .line 625
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->e:Lx9;

    .line 626
    .line 627
    invoke-virtual {v9, v1, v10}, Lx9;->f(II)I

    .line 628
    .line 629
    .line 630
    move-result v9

    .line 631
    if-ltz v9, :cond_36

    .line 632
    .line 633
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 634
    .line 635
    invoke-virtual {v11}, Lhg6;->b()I

    .line 636
    .line 637
    .line 638
    move-result v11

    .line 639
    if-ge v9, v11, :cond_36

    .line 640
    .line 641
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 642
    .line 643
    invoke-virtual {v11, v9}, Lhg6;->d(I)I

    .line 644
    .line 645
    .line 646
    move-result v11

    .line 647
    iget-object v15, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 648
    .line 649
    const-wide/16 v24, 0x3

    .line 650
    .line 651
    iget-boolean v13, v15, Lhg6;->b:Z

    .line 652
    .line 653
    if-eqz v13, :cond_2a

    .line 654
    .line 655
    invoke-virtual {v15, v9}, Lhg6;->c(I)J

    .line 656
    .line 657
    .line 658
    move-result-wide v12

    .line 659
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 660
    .line 661
    .line 662
    move-result v14

    .line 663
    add-int/lit8 v14, v14, -0x1

    .line 664
    .line 665
    :goto_10
    if-ltz v14, :cond_25

    .line 666
    .line 667
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v15

    .line 671
    check-cast v15, Lfh6;

    .line 672
    .line 673
    move-object/from16 v26, v8

    .line 674
    .line 675
    iget-wide v7, v15, Lfh6;->e:J

    .line 676
    .line 677
    iget-object v10, v15, Lfh6;->a:Landroid/view/View;

    .line 678
    .line 679
    cmp-long v7, v7, v12

    .line 680
    .line 681
    if-nez v7, :cond_24

    .line 682
    .line 683
    invoke-virtual {v15}, Lfh6;->q()Z

    .line 684
    .line 685
    .line 686
    move-result v7

    .line 687
    if-nez v7, :cond_24

    .line 688
    .line 689
    iget v7, v15, Lfh6;->f:I

    .line 690
    .line 691
    if-ne v11, v7, :cond_23

    .line 692
    .line 693
    const/16 v7, 0x20

    .line 694
    .line 695
    invoke-virtual {v15, v7}, Lfh6;->a(I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v15}, Lfh6;->i()Z

    .line 699
    .line 700
    .line 701
    move-result v2

    .line 702
    if-eqz v2, :cond_22

    .line 703
    .line 704
    iget-boolean v2, v5, Lbh6;->g:Z

    .line 705
    .line 706
    if-nez v2, :cond_22

    .line 707
    .line 708
    iget v2, v15, Lfh6;->j:I

    .line 709
    .line 710
    and-int/lit8 v2, v2, -0xf

    .line 711
    .line 712
    or-int/lit8 v2, v2, 0x2

    .line 713
    .line 714
    iput v2, v15, Lfh6;->j:I

    .line 715
    .line 716
    :cond_22
    move-object v7, v15

    .line 717
    goto :goto_13

    .line 718
    :cond_23
    const/16 v7, 0x20

    .line 719
    .line 720
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    const/4 v8, 0x0

    .line 724
    invoke-virtual {v4, v10, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 725
    .line 726
    .line 727
    invoke-static {v10}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 728
    .line 729
    .line 730
    move-result-object v10

    .line 731
    move-object/from16 v15, v17

    .line 732
    .line 733
    iput-object v15, v10, Lfh6;->n:Lvg6;

    .line 734
    .line 735
    iput-boolean v8, v10, Lfh6;->o:Z

    .line 736
    .line 737
    iget v8, v10, Lfh6;->j:I

    .line 738
    .line 739
    and-int/lit8 v8, v8, -0x21

    .line 740
    .line 741
    iput v8, v10, Lfh6;->j:I

    .line 742
    .line 743
    invoke-virtual {v0, v10}, Lvg6;->j(Lfh6;)V

    .line 744
    .line 745
    .line 746
    goto :goto_11

    .line 747
    :cond_24
    const/16 v7, 0x20

    .line 748
    .line 749
    :goto_11
    add-int/lit8 v14, v14, -0x1

    .line 750
    .line 751
    move-object/from16 v8, v26

    .line 752
    .line 753
    const/4 v10, 0x0

    .line 754
    const/16 v17, 0x0

    .line 755
    .line 756
    goto :goto_10

    .line 757
    :cond_25
    move-object/from16 v26, v8

    .line 758
    .line 759
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 760
    .line 761
    .line 762
    move-result v2

    .line 763
    add-int/lit8 v2, v2, -0x1

    .line 764
    .line 765
    :goto_12
    if-ltz v2, :cond_27

    .line 766
    .line 767
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v7

    .line 771
    check-cast v7, Lfh6;

    .line 772
    .line 773
    move-wide/from16 v27, v12

    .line 774
    .line 775
    iget-wide v12, v7, Lfh6;->e:J

    .line 776
    .line 777
    cmp-long v8, v12, v27

    .line 778
    .line 779
    if-nez v8, :cond_28

    .line 780
    .line 781
    invoke-virtual {v7}, Lfh6;->e()Z

    .line 782
    .line 783
    .line 784
    move-result v8

    .line 785
    if-nez v8, :cond_28

    .line 786
    .line 787
    iget v8, v7, Lfh6;->f:I

    .line 788
    .line 789
    if-ne v11, v8, :cond_26

    .line 790
    .line 791
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    goto :goto_13

    .line 795
    :cond_26
    invoke-virtual {v0, v2}, Lvg6;->h(I)V

    .line 796
    .line 797
    .line 798
    :cond_27
    const/4 v7, 0x0

    .line 799
    goto :goto_13

    .line 800
    :cond_28
    add-int/lit8 v2, v2, -0x1

    .line 801
    .line 802
    move-wide/from16 v12, v27

    .line 803
    .line 804
    goto :goto_12

    .line 805
    :goto_13
    if-eqz v7, :cond_29

    .line 806
    .line 807
    iput v9, v7, Lfh6;->c:I

    .line 808
    .line 809
    move-object v12, v7

    .line 810
    move/from16 v6, v16

    .line 811
    .line 812
    goto :goto_14

    .line 813
    :cond_29
    move-object v12, v7

    .line 814
    goto :goto_14

    .line 815
    :cond_2a
    move-object/from16 v26, v8

    .line 816
    .line 817
    :goto_14
    if-nez v12, :cond_2f

    .line 818
    .line 819
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 820
    .line 821
    if-eqz v2, :cond_2b

    .line 822
    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    const-string v3, "tryGetViewHolderForPositionByDeadline("

    .line 826
    .line 827
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    const-string v3, ") fetching from shared pool"

    .line 834
    .line 835
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    move-object/from16 v3, v26

    .line 843
    .line 844
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .line 846
    .line 847
    goto :goto_15

    .line 848
    :cond_2b
    move-object/from16 v3, v26

    .line 849
    .line 850
    :goto_15
    invoke-virtual {v0}, Lvg6;->c()Lug6;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    iget-object v2, v2, Lug6;->a:Landroid/util/SparseArray;

    .line 855
    .line 856
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    check-cast v2, Ltg6;

    .line 861
    .line 862
    if-eqz v2, :cond_2d

    .line 863
    .line 864
    iget-object v2, v2, Ltg6;->a:Ljava/util/ArrayList;

    .line 865
    .line 866
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 867
    .line 868
    .line 869
    move-result v7

    .line 870
    if-nez v7, :cond_2d

    .line 871
    .line 872
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 873
    .line 874
    .line 875
    move-result v7

    .line 876
    add-int/lit8 v7, v7, -0x1

    .line 877
    .line 878
    :goto_16
    if-ltz v7, :cond_2d

    .line 879
    .line 880
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v8

    .line 884
    check-cast v8, Lfh6;

    .line 885
    .line 886
    invoke-virtual {v8}, Lfh6;->e()Z

    .line 887
    .line 888
    .line 889
    move-result v8

    .line 890
    if-nez v8, :cond_2c

    .line 891
    .line 892
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-result-object v2

    .line 896
    check-cast v2, Lfh6;

    .line 897
    .line 898
    goto :goto_17

    .line 899
    :cond_2c
    add-int/lit8 v7, v7, -0x1

    .line 900
    .line 901
    goto :goto_16

    .line 902
    :cond_2d
    const/4 v2, 0x0

    .line 903
    :goto_17
    if-eqz v2, :cond_2e

    .line 904
    .line 905
    invoke-virtual {v2}, Lfh6;->n()V

    .line 906
    .line 907
    .line 908
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->S0:Z

    .line 909
    .line 910
    :cond_2e
    move-object v12, v2

    .line 911
    goto :goto_18

    .line 912
    :cond_2f
    move-object/from16 v3, v26

    .line 913
    .line 914
    :goto_18
    if-nez v12, :cond_38

    .line 915
    .line 916
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 917
    .line 918
    .line 919
    move-result-wide v7

    .line 920
    cmp-long v2, p2, v22

    .line 921
    .line 922
    if-eqz v2, :cond_31

    .line 923
    .line 924
    iget-object v2, v0, Lvg6;->g:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v2, Lug6;

    .line 927
    .line 928
    invoke-virtual {v2, v11}, Lug6;->a(I)Ltg6;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    iget-wide v9, v2, Ltg6;->c:J

    .line 933
    .line 934
    cmp-long v2, v9, v20

    .line 935
    .line 936
    if-eqz v2, :cond_31

    .line 937
    .line 938
    add-long/2addr v9, v7

    .line 939
    cmp-long v2, v9, p2

    .line 940
    .line 941
    if-gez v2, :cond_30

    .line 942
    .line 943
    goto :goto_19

    .line 944
    :cond_30
    const/4 v15, 0x0

    .line 945
    return-object v15

    .line 946
    :cond_31
    :goto_19
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 947
    .line 948
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 949
    .line 950
    .line 951
    :try_start_0
    invoke-static {}, Ly88;->a()Z

    .line 952
    .line 953
    .line 954
    move-result v9

    .line 955
    if-eqz v9, :cond_32

    .line 956
    .line 957
    const-string v9, "RV onCreateViewHolder type=0x%X"

    .line 958
    .line 959
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 960
    .line 961
    .line 962
    move-result-object v10

    .line 963
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    move-result-object v10

    .line 967
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v9

    .line 971
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    :cond_32
    invoke-virtual {v2, v4, v11}, Lhg6;->j(Landroid/view/ViewGroup;I)Lfh6;

    .line 975
    .line 976
    .line 977
    move-result-object v12

    .line 978
    iget-object v2, v12, Lfh6;->a:Landroid/view/View;

    .line 979
    .line 980
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    if-nez v2, :cond_35

    .line 985
    .line 986
    iput v11, v12, Lfh6;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    .line 988
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 989
    .line 990
    .line 991
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->X0:Z

    .line 992
    .line 993
    if-eqz v2, :cond_33

    .line 994
    .line 995
    iget-object v2, v12, Lfh6;->a:Landroid/view/View;

    .line 996
    .line 997
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->F(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    if-eqz v2, :cond_33

    .line 1002
    .line 1003
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 1004
    .line 1005
    invoke-direct {v9, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1006
    .line 1007
    .line 1008
    iput-object v9, v12, Lfh6;->b:Ljava/lang/ref/WeakReference;

    .line 1009
    .line 1010
    :cond_33
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1011
    .line 1012
    .line 1013
    move-result-wide v9

    .line 1014
    iget-object v2, v0, Lvg6;->g:Ljava/lang/Object;

    .line 1015
    .line 1016
    check-cast v2, Lug6;

    .line 1017
    .line 1018
    sub-long/2addr v9, v7

    .line 1019
    invoke-virtual {v2, v11}, Lug6;->a(I)Ltg6;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    iget-wide v7, v2, Ltg6;->c:J

    .line 1024
    .line 1025
    cmp-long v11, v7, v20

    .line 1026
    .line 1027
    if-nez v11, :cond_34

    .line 1028
    .line 1029
    goto :goto_1a

    .line 1030
    :cond_34
    div-long v7, v7, v18

    .line 1031
    .line 1032
    mul-long v7, v7, v24

    .line 1033
    .line 1034
    div-long v9, v9, v18

    .line 1035
    .line 1036
    add-long/2addr v9, v7

    .line 1037
    :goto_1a
    iput-wide v9, v2, Ltg6;->c:J

    .line 1038
    .line 1039
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 1040
    .line 1041
    if-eqz v2, :cond_38

    .line 1042
    .line 1043
    const-string v2, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    .line 1044
    .line 1045
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .line 1047
    .line 1048
    goto :goto_1b

    .line 1049
    :cond_35
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1050
    .line 1051
    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 1052
    .line 1053
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1057
    :catchall_0
    move-exception v0

    .line 1058
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1059
    .line 1060
    .line 1061
    throw v0

    .line 1062
    :cond_36
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1063
    .line 1064
    const-string v2, "(offset:"

    .line 1065
    .line 1066
    const-string v3, ").state:"

    .line 1067
    .line 1068
    const-string v6, "Inconsistency detected. Invalid item position "

    .line 1069
    .line 1070
    invoke-static {v6, v1, v2, v3, v9}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v1

    .line 1074
    invoke-virtual {v5}, Lbh6;->b()I

    .line 1075
    .line 1076
    .line 1077
    move-result v2

    .line 1078
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v2

    .line 1085
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    throw v0

    .line 1096
    :cond_37
    const-wide/16 v24, 0x3

    .line 1097
    .line 1098
    :cond_38
    :goto_1b
    iget-object v2, v12, Lfh6;->a:Landroid/view/View;

    .line 1099
    .line 1100
    if-eqz v6, :cond_39

    .line 1101
    .line 1102
    iget-boolean v3, v5, Lbh6;->g:Z

    .line 1103
    .line 1104
    if-nez v3, :cond_39

    .line 1105
    .line 1106
    iget v3, v12, Lfh6;->j:I

    .line 1107
    .line 1108
    and-int/lit16 v7, v3, 0x2000

    .line 1109
    .line 1110
    if-eqz v7, :cond_39

    .line 1111
    .line 1112
    and-int/lit16 v3, v3, -0x2001

    .line 1113
    .line 1114
    iput v3, v12, Lfh6;->j:I

    .line 1115
    .line 1116
    iget-boolean v3, v5, Lbh6;->j:Z

    .line 1117
    .line 1118
    if-eqz v3, :cond_39

    .line 1119
    .line 1120
    invoke-static {v12}, Lng6;->b(Lfh6;)V

    .line 1121
    .line 1122
    .line 1123
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->g0:Lng6;

    .line 1124
    .line 1125
    invoke-virtual {v12}, Lfh6;->d()Ljava/util/List;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1129
    .line 1130
    .line 1131
    new-instance v3, Lmg6;

    .line 1132
    .line 1133
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v3, v12}, Lmg6;->a(Lfh6;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v4, v12, v3}, Landroidx/recyclerview/widget/RecyclerView;->Y(Lfh6;Lmg6;)V

    .line 1140
    .line 1141
    .line 1142
    :cond_39
    iget-boolean v3, v5, Lbh6;->g:Z

    .line 1143
    .line 1144
    if-eqz v3, :cond_3a

    .line 1145
    .line 1146
    invoke-virtual {v12}, Lfh6;->f()Z

    .line 1147
    .line 1148
    .line 1149
    move-result v3

    .line 1150
    if-eqz v3, :cond_3a

    .line 1151
    .line 1152
    iput v1, v12, Lfh6;->g:I

    .line 1153
    .line 1154
    goto :goto_1c

    .line 1155
    :cond_3a
    invoke-virtual {v12}, Lfh6;->f()Z

    .line 1156
    .line 1157
    .line 1158
    move-result v3

    .line 1159
    if-eqz v3, :cond_3d

    .line 1160
    .line 1161
    iget v3, v12, Lfh6;->j:I

    .line 1162
    .line 1163
    and-int/lit8 v3, v3, 0x2

    .line 1164
    .line 1165
    if-eqz v3, :cond_3b

    .line 1166
    .line 1167
    goto :goto_1d

    .line 1168
    :cond_3b
    invoke-virtual {v12}, Lfh6;->g()Z

    .line 1169
    .line 1170
    .line 1171
    move-result v3

    .line 1172
    if-eqz v3, :cond_3c

    .line 1173
    .line 1174
    goto :goto_1d

    .line 1175
    :cond_3c
    :goto_1c
    move/from16 v8, v16

    .line 1176
    .line 1177
    const/4 v0, 0x0

    .line 1178
    goto/16 :goto_29

    .line 1179
    .line 1180
    :cond_3d
    :goto_1d
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->S0:Z

    .line 1181
    .line 1182
    if-eqz v3, :cond_3e

    .line 1183
    .line 1184
    invoke-virtual {v12}, Lfh6;->i()Z

    .line 1185
    .line 1186
    .line 1187
    move-result v3

    .line 1188
    if-nez v3, :cond_3f

    .line 1189
    .line 1190
    :cond_3e
    const/4 v15, 0x0

    .line 1191
    goto :goto_1f

    .line 1192
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    const-string v1, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1195
    .line 1196
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v1

    .line 1206
    invoke-static {v0, v1}, Lf6;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 1207
    .line 1208
    .line 1209
    :goto_1e
    const/4 v15, 0x0

    .line 1210
    return-object v15

    .line 1211
    :goto_1f
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->e:Lx9;

    .line 1212
    .line 1213
    const/4 v8, 0x0

    .line 1214
    invoke-virtual {v3, v1, v8}, Lx9;->f(II)I

    .line 1215
    .line 1216
    .line 1217
    move-result v3

    .line 1218
    iput-object v15, v12, Lfh6;->s:Lhg6;

    .line 1219
    .line 1220
    iput-object v4, v12, Lfh6;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 1221
    .line 1222
    iget v7, v12, Lfh6;->f:I

    .line 1223
    .line 1224
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1225
    .line 1226
    .line 1227
    move-result-wide v9

    .line 1228
    cmp-long v11, p2, v22

    .line 1229
    .line 1230
    if-eqz v11, :cond_41

    .line 1231
    .line 1232
    iget-object v11, v0, Lvg6;->g:Ljava/lang/Object;

    .line 1233
    .line 1234
    check-cast v11, Lug6;

    .line 1235
    .line 1236
    invoke-virtual {v11, v7}, Lug6;->a(I)Ltg6;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v7

    .line 1240
    iget-wide v13, v7, Ltg6;->d:J

    .line 1241
    .line 1242
    cmp-long v7, v13, v20

    .line 1243
    .line 1244
    if-eqz v7, :cond_41

    .line 1245
    .line 1246
    add-long/2addr v13, v9

    .line 1247
    cmp-long v7, v13, p2

    .line 1248
    .line 1249
    if-gez v7, :cond_40

    .line 1250
    .line 1251
    goto :goto_20

    .line 1252
    :cond_40
    move v0, v8

    .line 1253
    move/from16 v8, v16

    .line 1254
    .line 1255
    goto/16 :goto_29

    .line 1256
    .line 1257
    :cond_41
    :goto_20
    invoke-virtual {v12}, Lfh6;->k()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v7

    .line 1261
    if-eqz v7, :cond_42

    .line 1262
    .line 1263
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1264
    .line 1265
    .line 1266
    move-result v7

    .line 1267
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v11

    .line 1271
    invoke-static {v4, v2, v7, v11}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1272
    .line 1273
    .line 1274
    move/from16 v7, v16

    .line 1275
    .line 1276
    goto :goto_21

    .line 1277
    :cond_42
    move v7, v8

    .line 1278
    :goto_21
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 1279
    .line 1280
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1281
    .line 1282
    .line 1283
    iget-object v13, v12, Lfh6;->s:Lhg6;

    .line 1284
    .line 1285
    if-nez v13, :cond_43

    .line 1286
    .line 1287
    move/from16 v13, v16

    .line 1288
    .line 1289
    goto :goto_22

    .line 1290
    :cond_43
    move v13, v8

    .line 1291
    :goto_22
    if-eqz v13, :cond_45

    .line 1292
    .line 1293
    iput v3, v12, Lfh6;->c:I

    .line 1294
    .line 1295
    iget-boolean v14, v11, Lhg6;->b:Z

    .line 1296
    .line 1297
    move-wide/from16 v22, v9

    .line 1298
    .line 1299
    if-eqz v14, :cond_44

    .line 1300
    .line 1301
    invoke-virtual {v11, v3}, Lhg6;->c(I)J

    .line 1302
    .line 1303
    .line 1304
    move-result-wide v8

    .line 1305
    iput-wide v8, v12, Lfh6;->e:J

    .line 1306
    .line 1307
    :cond_44
    iget v8, v12, Lfh6;->j:I

    .line 1308
    .line 1309
    and-int/lit16 v8, v8, -0x208

    .line 1310
    .line 1311
    or-int/lit8 v8, v8, 0x1

    .line 1312
    .line 1313
    iput v8, v12, Lfh6;->j:I

    .line 1314
    .line 1315
    invoke-static {}, Ly88;->a()Z

    .line 1316
    .line 1317
    .line 1318
    move-result v8

    .line 1319
    if-eqz v8, :cond_46

    .line 1320
    .line 1321
    iget v8, v12, Lfh6;->f:I

    .line 1322
    .line 1323
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v8

    .line 1327
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v8

    .line 1331
    const-string v9, "RV onBindViewHolder type=0x%X"

    .line 1332
    .line 1333
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v8

    .line 1337
    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1338
    .line 1339
    .line 1340
    goto :goto_23

    .line 1341
    :cond_45
    move-wide/from16 v22, v9

    .line 1342
    .line 1343
    :cond_46
    :goto_23
    iput-object v11, v12, Lfh6;->s:Lhg6;

    .line 1344
    .line 1345
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->S0:Z

    .line 1346
    .line 1347
    if-eqz v8, :cond_49

    .line 1348
    .line 1349
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1350
    .line 1351
    .line 1352
    move-result-object v8

    .line 1353
    if-nez v8, :cond_48

    .line 1354
    .line 1355
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1356
    .line 1357
    .line 1358
    move-result v8

    .line 1359
    invoke-virtual {v12}, Lfh6;->k()Z

    .line 1360
    .line 1361
    .line 1362
    move-result v9

    .line 1363
    if-ne v8, v9, :cond_47

    .line 1364
    .line 1365
    goto :goto_24

    .line 1366
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1367
    .line 1368
    invoke-virtual {v12}, Lfh6;->k()Z

    .line 1369
    .line 1370
    .line 1371
    move-result v1

    .line 1372
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1373
    .line 1374
    .line 1375
    move-result v2

    .line 1376
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    const-string v4, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    .line 1379
    .line 1380
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1384
    .line 1385
    .line 1386
    const-string v1, ", attached to window: "

    .line 1387
    .line 1388
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    .line 1391
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1392
    .line 1393
    .line 1394
    const-string v1, ", holder: "

    .line 1395
    .line 1396
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v1

    .line 1406
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1407
    .line 1408
    .line 1409
    throw v0

    .line 1410
    :cond_48
    :goto_24
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v8

    .line 1414
    if-nez v8, :cond_49

    .line 1415
    .line 1416
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1417
    .line 1418
    .line 1419
    move-result v8

    .line 1420
    if-nez v8, :cond_4a

    .line 1421
    .line 1422
    :cond_49
    const/4 v15, 0x0

    .line 1423
    goto :goto_25

    .line 1424
    :cond_4a
    const-string v0, "Attempting to bind attached holder with no parent (AKA temp detached): "

    .line 1425
    .line 1426
    invoke-static {v12, v0}, Ly5;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    goto/16 :goto_1e

    .line 1430
    .line 1431
    :goto_25
    invoke-virtual {v12}, Lfh6;->d()Ljava/util/List;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v8

    .line 1435
    invoke-virtual {v11, v12, v3, v8}, Lhg6;->i(Lfh6;ILjava/util/List;)V

    .line 1436
    .line 1437
    .line 1438
    if-eqz v13, :cond_4d

    .line 1439
    .line 1440
    iget-object v3, v12, Lfh6;->k:Ljava/util/ArrayList;

    .line 1441
    .line 1442
    if-eqz v3, :cond_4b

    .line 1443
    .line 1444
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1445
    .line 1446
    .line 1447
    :cond_4b
    iget v3, v12, Lfh6;->j:I

    .line 1448
    .line 1449
    and-int/lit16 v3, v3, -0x401

    .line 1450
    .line 1451
    iput v3, v12, Lfh6;->j:I

    .line 1452
    .line 1453
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v3

    .line 1457
    instance-of v8, v3, Lqg6;

    .line 1458
    .line 1459
    if-eqz v8, :cond_4c

    .line 1460
    .line 1461
    check-cast v3, Lqg6;

    .line 1462
    .line 1463
    move/from16 v8, v16

    .line 1464
    .line 1465
    iput-boolean v8, v3, Lqg6;->c:Z

    .line 1466
    .line 1467
    :cond_4c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1468
    .line 1469
    .line 1470
    :cond_4d
    if-eqz v7, :cond_4e

    .line 1471
    .line 1472
    invoke-static {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1473
    .line 1474
    .line 1475
    :cond_4e
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1476
    .line 1477
    .line 1478
    move-result-wide v7

    .line 1479
    iget-object v0, v0, Lvg6;->g:Ljava/lang/Object;

    .line 1480
    .line 1481
    check-cast v0, Lug6;

    .line 1482
    .line 1483
    iget v3, v12, Lfh6;->f:I

    .line 1484
    .line 1485
    sub-long v7, v7, v22

    .line 1486
    .line 1487
    invoke-virtual {v0, v3}, Lug6;->a(I)Ltg6;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v0

    .line 1491
    iget-wide v9, v0, Ltg6;->d:J

    .line 1492
    .line 1493
    cmp-long v3, v9, v20

    .line 1494
    .line 1495
    if-nez v3, :cond_4f

    .line 1496
    .line 1497
    goto :goto_26

    .line 1498
    :cond_4f
    div-long v9, v9, v18

    .line 1499
    .line 1500
    mul-long v9, v9, v24

    .line 1501
    .line 1502
    div-long v7, v7, v18

    .line 1503
    .line 1504
    add-long/2addr v7, v9

    .line 1505
    :goto_26
    iput-wide v7, v0, Ltg6;->d:J

    .line 1506
    .line 1507
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->T:Landroid/view/accessibility/AccessibilityManager;

    .line 1508
    .line 1509
    if-eqz v0, :cond_55

    .line 1510
    .line 1511
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1512
    .line 1513
    .line 1514
    move-result v0

    .line 1515
    if-eqz v0, :cond_55

    .line 1516
    .line 1517
    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    .line 1518
    .line 1519
    .line 1520
    move-result v0

    .line 1521
    const/4 v8, 0x1

    .line 1522
    if-nez v0, :cond_50

    .line 1523
    .line 1524
    invoke-virtual {v2, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1525
    .line 1526
    .line 1527
    :cond_50
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->E0:Lhh6;

    .line 1528
    .line 1529
    if-nez v0, :cond_51

    .line 1530
    .line 1531
    goto :goto_28

    .line 1532
    :cond_51
    invoke-virtual {v0}, Lhh6;->j()Lw5;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v0

    .line 1536
    instance-of v3, v0, Lgh6;

    .line 1537
    .line 1538
    if-eqz v3, :cond_54

    .line 1539
    .line 1540
    move-object v3, v0

    .line 1541
    check-cast v3, Lgh6;

    .line 1542
    .line 1543
    invoke-static {v2}, Ldl8;->d(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v7

    .line 1547
    if-nez v7, :cond_52

    .line 1548
    .line 1549
    goto :goto_27

    .line 1550
    :cond_52
    instance-of v9, v7, Lv5;

    .line 1551
    .line 1552
    if-eqz v9, :cond_53

    .line 1553
    .line 1554
    check-cast v7, Lv5;

    .line 1555
    .line 1556
    iget-object v7, v7, Lv5;->a:Lw5;

    .line 1557
    .line 1558
    move-object v15, v7

    .line 1559
    goto :goto_27

    .line 1560
    :cond_53
    new-instance v9, Lw5;

    .line 1561
    .line 1562
    invoke-direct {v9, v7}, Lw5;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1563
    .line 1564
    .line 1565
    move-object v15, v9

    .line 1566
    :goto_27
    if-eqz v15, :cond_54

    .line 1567
    .line 1568
    if-eq v15, v3, :cond_54

    .line 1569
    .line 1570
    iget-object v3, v3, Lgh6;->e:Ljava/util/WeakHashMap;

    .line 1571
    .line 1572
    invoke-virtual {v3, v2, v15}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    .line 1574
    .line 1575
    :cond_54
    invoke-static {v2, v0}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 1576
    .line 1577
    .line 1578
    goto :goto_28

    .line 1579
    :cond_55
    const/4 v8, 0x1

    .line 1580
    :goto_28
    iget-boolean v0, v5, Lbh6;->g:Z

    .line 1581
    .line 1582
    if-eqz v0, :cond_56

    .line 1583
    .line 1584
    iput v1, v12, Lfh6;->g:I

    .line 1585
    .line 1586
    :cond_56
    move v0, v8

    .line 1587
    :goto_29
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v1

    .line 1591
    if-nez v1, :cond_57

    .line 1592
    .line 1593
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v1

    .line 1597
    check-cast v1, Lqg6;

    .line 1598
    .line 1599
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1600
    .line 1601
    .line 1602
    goto :goto_2a

    .line 1603
    :cond_57
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1604
    .line 1605
    .line 1606
    move-result v3

    .line 1607
    if-nez v3, :cond_58

    .line 1608
    .line 1609
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v1

    .line 1613
    check-cast v1, Lqg6;

    .line 1614
    .line 1615
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1616
    .line 1617
    .line 1618
    goto :goto_2a

    .line 1619
    :cond_58
    check-cast v1, Lqg6;

    .line 1620
    .line 1621
    :goto_2a
    iput-object v12, v1, Lqg6;->a:Lfh6;

    .line 1622
    .line 1623
    if-eqz v6, :cond_59

    .line 1624
    .line 1625
    if-eqz v0, :cond_59

    .line 1626
    .line 1627
    move v9, v8

    .line 1628
    goto :goto_2b

    .line 1629
    :cond_59
    const/4 v9, 0x0

    .line 1630
    :goto_2b
    iput-boolean v9, v1, Lqg6;->d:Z

    .line 1631
    .line 1632
    return-object v12

    .line 1633
    :cond_5a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1634
    .line 1635
    const-string v2, "("

    .line 1636
    .line 1637
    const-string v3, "). Item count:"

    .line 1638
    .line 1639
    const-string v6, "Invalid item position "

    .line 1640
    .line 1641
    invoke-static {v6, v1, v2, v3, v1}, Lxs1;->n(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v1

    .line 1645
    invoke-virtual {v5}, Lbh6;->b()I

    .line 1646
    .line 1647
    .line 1648
    move-result v2

    .line 1649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1650
    .line 1651
    .line 1652
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v2

    .line 1656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1657
    .line 1658
    .line 1659
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v1

    .line 1663
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1664
    .line 1665
    .line 1666
    throw v0
.end method

.method public m(Lfh6;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lfh6;->o:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lvg6;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lvg6;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x0

    .line 21
    iput-object p0, p1, Lfh6;->n:Lvg6;

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    iput-boolean p0, p1, Lfh6;->o:Z

    .line 25
    .line 26
    iget p0, p1, Lfh6;->j:I

    .line 27
    .line 28
    and-int/lit8 p0, p0, -0x21

    .line 29
    .line 30
    iput p0, p1, Lfh6;->j:I

    .line 31
    .line 32
    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lvg6;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lvg6;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v1, Landroidx/recyclerview/widget/a;->q:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget v2, p0, Lvg6;->a:I

    .line 18
    .line 19
    add-int/2addr v2, v1

    .line 20
    iput v2, p0, Lvg6;->b:I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    :goto_1
    if-ltz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v3, p0, Lvg6;->b:I

    .line 35
    .line 36
    if-le v2, v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lvg6;->h(I)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    return-void
.end method
