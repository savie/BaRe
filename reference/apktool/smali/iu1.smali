.class public final Liu1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lrp2;
.implements Lhy5;
.implements Lul0;
.implements Lqo4;


# instance fields
.field public final a:Lvp4;

.field public final b:Landroid/graphics/RectF;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Path;

.field public final e:Landroid/graphics/RectF;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/util/ArrayList;

.field public final i:Lc35;

.field public j:Ljava/util/ArrayList;

.field public final k:Lk98;


# direct methods
.method public constructor <init>(Lc35;Lam0;Lbc7;)V
    .locals 7

    .line 122
    iget-object v3, p3, Lbc7;->a:Ljava/lang/String;

    .line 123
    iget-boolean v4, p3, Lbc7;->c:Z

    .line 124
    iget-object p3, p3, Lbc7;->b:Ljava/util/List;

    .line 125
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 127
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltu1;

    invoke-interface {v2, p1, p2}, Ltu1;->a(Lc35;Lam0;)Lgu1;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 130
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltu1;

    .line 131
    instance-of v2, v1, Lmc;

    if-eqz v2, :cond_2

    .line 132
    check-cast v1, Lmc;

    :goto_2
    move-object v0, p0

    move-object v2, p2

    move-object v6, v1

    move-object v1, p1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 133
    :goto_3
    invoke-direct/range {v0 .. v6}, Liu1;-><init>(Lc35;Lam0;Ljava/lang/String;ZLjava/util/ArrayList;Lmc;)V

    return-void
.end method

.method public constructor <init>(Lc35;Lam0;Ljava/lang/String;ZLjava/util/ArrayList;Lmc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvp4;

    .line 5
    .line 6
    invoke-direct {v0}, Lvp4;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Liu1;->a:Lvp4;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Liu1;->b:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Liu1;->c:Landroid/graphics/Matrix;

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/Path;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Liu1;->d:Landroid/graphics/Path;

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/RectF;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Liu1;->e:Landroid/graphics/RectF;

    .line 38
    .line 39
    iput-object p3, p0, Liu1;->f:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p1, p0, Liu1;->i:Lc35;

    .line 42
    .line 43
    iput-boolean p4, p0, Liu1;->g:Z

    .line 44
    .line 45
    iput-object p5, p0, Liu1;->h:Ljava/util/ArrayList;

    .line 46
    .line 47
    if-eqz p6, :cond_0

    .line 48
    .line 49
    new-instance p1, Lk98;

    .line 50
    .line 51
    invoke-direct {p1, p6}, Lk98;-><init>(Lmc;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Liu1;->k:Lk98;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lk98;->a(Lam0;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0}, Lk98;->b(Lul0;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    add-int/lit8 p1, p1, -0x1

    .line 72
    .line 73
    :goto_0
    if-ltz p1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Lgu1;

    .line 80
    .line 81
    instance-of p3, p2, Ln14;

    .line 82
    .line 83
    if-eqz p3, :cond_1

    .line 84
    .line 85
    check-cast p2, Ln14;

    .line 86
    .line 87
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    add-int/lit8 p1, p1, -0x1

    .line 98
    .line 99
    :goto_1
    if-ltz p1, :cond_3

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Ln14;

    .line 106
    .line 107
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    invoke-interface {p2, p3}, Ln14;->g(Ljava/util/ListIterator;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 p1, p1, -0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Path;
    .locals 5

    .line 1
    iget-object v0, p0, Liu1;->c:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Liu1;->k:Lk98;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lk98;->e()Landroid/graphics/Matrix;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Liu1;->d:Landroid/graphics/Path;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 20
    .line 21
    .line 22
    iget-boolean v2, p0, Liu1;->g:Z

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iget-object p0, p0, Liu1;->h:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/lit8 v2, v2, -0x1

    .line 34
    .line 35
    :goto_0
    if-ltz v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lgu1;

    .line 42
    .line 43
    instance-of v4, v3, Lhy5;

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    check-cast v3, Lhy5;

    .line 48
    .line 49
    invoke-interface {v3}, Lhy5;->a()Landroid/graphics/Path;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Liu1;->i:Lc35;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc35;->invalidateSelf()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Liu1;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    add-int/lit8 p1, p1, -0x1

    .line 25
    .line 26
    :goto_0
    if-ltz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lgu1;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, p2, v1}, Lgu1;->c(Ljava/util/List;Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 p1, p1, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public final d(Lpo4;ILjava/util/ArrayList;Lpo4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Liu1;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Lpo4;->c(ILjava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "__container"

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    new-instance v1, Lpo4;

    .line 25
    .line 26
    invoke-direct {v1, p4}, Lpo4;-><init>(Lpo4;)V

    .line 27
    .line 28
    .line 29
    iget-object p4, v1, Lpo4;->a:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2, v0}, Lpo4;->a(ILjava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-eqz p4, :cond_1

    .line 39
    .line 40
    new-instance p4, Lpo4;

    .line 41
    .line 42
    invoke-direct {p4, v1}, Lpo4;-><init>(Lpo4;)V

    .line 43
    .line 44
    .line 45
    iput-object p0, p4, Lpo4;->b:Lqo4;

    .line 46
    .line 47
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    move-object p4, v1

    .line 51
    :cond_2
    invoke-virtual {p1, p2, v0}, Lpo4;->d(ILjava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Lpo4;->b(ILjava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v0, p2

    .line 62
    const/4 p2, 0x0

    .line 63
    :goto_0
    iget-object v1, p0, Liu1;->h:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ge p2, v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lgu1;

    .line 76
    .line 77
    instance-of v2, v1, Lqo4;

    .line 78
    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    check-cast v1, Lqo4;

    .line 82
    .line 83
    invoke-interface {v1, p1, v0, p3, p4}, Lqo4;->d(Lpo4;ILjava/util/ArrayList;Lpo4;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    :goto_1
    return-void
.end method

.method public final e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Liu1;->c:Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Liu1;->k:Lk98;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Lk98;->e()Landroid/graphics/Matrix;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p2, p0, Liu1;->e:Landroid/graphics/RectF;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Liu1;->h:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    :goto_0
    if-ltz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lgu1;

    .line 38
    .line 39
    instance-of v3, v2, Lrp2;

    .line 40
    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    check-cast v2, Lrp2;

    .line 44
    .line 45
    invoke-interface {v2, p2, v0, p3}, Lrp2;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    return-void
.end method

.method public final f(Lcd;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Liu1;->k:Lk98;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lk98;->c(Lcd;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Liu1;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Liu1;->j:Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Liu1;->h:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ge v0, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lgu1;

    .line 26
    .line 27
    instance-of v2, v1, Lhy5;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Liu1;->j:Ljava/util/ArrayList;

    .line 32
    .line 33
    check-cast v1, Lhy5;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p0, p0, Liu1;->j:Ljava/util/ArrayList;

    .line 42
    .line 43
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Liu1;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Liu1;->c:Landroid/graphics/Matrix;

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Liu1;->k:Lk98;

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Lk98;->e()Landroid/graphics/Matrix;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 21
    .line 22
    .line 23
    iget-object p2, p2, Lk98;->j:Lyl0;

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    const/16 p2, 0x64

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p2}, Lyl0;->f()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    :goto_0
    int-to-float p2, p2

    .line 41
    const/high16 v1, 0x42c80000    # 100.0f

    .line 42
    .line 43
    div-float/2addr p2, v1

    .line 44
    int-to-float p3, p3

    .line 45
    mul-float/2addr p2, p3

    .line 46
    const/high16 p3, 0x437f0000    # 255.0f

    .line 47
    .line 48
    div-float/2addr p2, p3

    .line 49
    mul-float/2addr p2, p3

    .line 50
    float-to-int p3, p2

    .line 51
    :cond_2
    iget-object p2, p0, Liu1;->i:Lc35;

    .line 52
    .line 53
    iget-boolean p2, p2, Lc35;->I:Z

    .line 54
    .line 55
    const/16 v1, 0xff

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    iget-object v3, p0, Liu1;->h:Ljava/util/ArrayList;

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    move p2, v2

    .line 64
    move v5, p2

    .line 65
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-ge p2, v6, :cond_4

    .line 70
    .line 71
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    instance-of v6, v6, Lrp2;

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    const/4 v6, 0x2

    .line 82
    if-lt v5, v6, :cond_3

    .line 83
    .line 84
    if-eq p3, v1, :cond_4

    .line 85
    .line 86
    move v2, v4

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 92
    .line 93
    iget-object p2, p0, Liu1;->b:Landroid/graphics/RectF;

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p2, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p2, v0, v4}, Liu1;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Liu1;->a:Lvp4;

    .line 103
    .line 104
    invoke-virtual {p0, p3}, Lvp4;->setAlpha(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1, p2, p0}, Lmi8;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    if-eqz v2, :cond_6

    .line 111
    .line 112
    move p3, v1

    .line 113
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    sub-int/2addr p0, v4

    .line 118
    :goto_3
    if-ltz p0, :cond_8

    .line 119
    .line 120
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    instance-of v1, p2, Lrp2;

    .line 125
    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    check-cast p2, Lrp2;

    .line 129
    .line 130
    invoke-interface {p2, p1, v0, p3}, Lrp2;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 131
    .line 132
    .line 133
    :cond_7
    add-int/lit8 p0, p0, -0x1

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_8
    if-eqz v2, :cond_9

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 139
    .line 140
    .line 141
    :cond_9
    :goto_4
    return-void
.end method
