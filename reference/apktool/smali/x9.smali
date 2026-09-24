.class public final Lx9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lvc9;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lrb;

.field public final e:Lrb;

.field public f:I


# direct methods
.method public constructor <init>(Lrb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvc9;

    .line 5
    .line 6
    const/16 v1, 0x1e

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lvc9;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lx9;->a:Lvc9;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lx9;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lx9;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lx9;->f:I

    .line 29
    .line 30
    iput-object p1, p0, Lx9;->d:Lrb;

    .line 31
    .line 32
    new-instance p1, Lrb;

    .line 33
    .line 34
    const/16 v0, 0x12

    .line 35
    .line 36
    invoke-direct {p1, p0, v0}, Lrb;-><init>(Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lx9;->e:Lrb;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lx9;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lw9;

    .line 16
    .line 17
    iget v5, v4, Lw9;->a:I

    .line 18
    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    if-ne v5, v6, :cond_0

    .line 23
    .line 24
    iget v4, v4, Lw9;->d:I

    .line 25
    .line 26
    add-int/lit8 v5, v3, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v4, v5}, Lx9;->f(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ne v4, p1, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    if-ne v5, v7, :cond_2

    .line 36
    .line 37
    iget v5, v4, Lw9;->b:I

    .line 38
    .line 39
    iget v4, v4, Lw9;->d:I

    .line 40
    .line 41
    add-int/2addr v4, v5

    .line 42
    :goto_1
    if-ge v5, v4, :cond_2

    .line 43
    .line 44
    add-int/lit8 v6, v3, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, v5, v6}, Lx9;->f(II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-ne v6, p1, :cond_1

    .line 51
    .line 52
    :goto_2
    return v7

    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return v2
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lx9;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lw9;

    .line 16
    .line 17
    iget-object v5, p0, Lx9;->d:Lrb;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Lrb;->r(Lw9;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Lx9;->k(Ljava/util/ArrayList;)V

    .line 26
    .line 27
    .line 28
    iput v2, p0, Lx9;->f:I

    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lx9;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lx9;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    if-ge v3, v1, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lw9;

    .line 19
    .line 20
    iget v5, v4, Lw9;->a:I

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    iget-object v7, p0, Lx9;->d:Lrb;

    .line 24
    .line 25
    if-eq v5, v6, :cond_3

    .line 26
    .line 27
    const/4 v8, 0x2

    .line 28
    if-eq v5, v8, :cond_2

    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    if-eq v5, v6, :cond_1

    .line 32
    .line 33
    const/16 v6, 0x8

    .line 34
    .line 35
    if-eq v5, v6, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v7, v4}, Lrb;->r(Lw9;)V

    .line 39
    .line 40
    .line 41
    iget v5, v4, Lw9;->b:I

    .line 42
    .line 43
    iget v4, v4, Lw9;->d:I

    .line 44
    .line 45
    invoke-virtual {v7, v5, v4}, Lrb;->w(II)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v7, v4}, Lrb;->r(Lw9;)V

    .line 50
    .line 51
    .line 52
    iget v5, v4, Lw9;->b:I

    .line 53
    .line 54
    iget v6, v4, Lw9;->d:I

    .line 55
    .line 56
    iget-object v4, v4, Lw9;->c:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-virtual {v7, v4, v5, v6}, Lrb;->u(Ljava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v7, v4}, Lrb;->r(Lw9;)V

    .line 63
    .line 64
    .line 65
    iget v5, v4, Lw9;->b:I

    .line 66
    .line 67
    iget v4, v4, Lw9;->d:I

    .line 68
    .line 69
    iget-object v7, v7, Lrb;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-virtual {v7, v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->R(IIZ)V

    .line 74
    .line 75
    .line 76
    iput-boolean v6, v7, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    .line 77
    .line 78
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 79
    .line 80
    iget v6, v5, Lbh6;->c:I

    .line 81
    .line 82
    add-int/2addr v6, v4

    .line 83
    iput v6, v5, Lbh6;->c:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v7, v4}, Lrb;->r(Lw9;)V

    .line 87
    .line 88
    .line 89
    iget v5, v4, Lw9;->b:I

    .line 90
    .line 91
    iget v4, v4, Lw9;->d:I

    .line 92
    .line 93
    invoke-virtual {v7, v5, v4}, Lrb;->v(II)V

    .line 94
    .line 95
    .line 96
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {p0, v0}, Lx9;->k(Ljava/util/ArrayList;)V

    .line 100
    .line 101
    .line 102
    iput v2, p0, Lx9;->f:I

    .line 103
    .line 104
    return-void
.end method

.method public final d(Lw9;)V
    .locals 13

    .line 1
    iget v0, p1, Lw9;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_8

    .line 5
    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    if-eq v0, v2, :cond_8

    .line 9
    .line 10
    iget v2, p1, Lw9;->b:I

    .line 11
    .line 12
    invoke-virtual {p0, v2, v0}, Lx9;->l(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p1, Lw9;->b:I

    .line 17
    .line 18
    iget v3, p1, Lw9;->a:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    move v3, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "op should be remove or update."

    .line 29
    .line 30
    invoke-static {p1, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_0
    move v6, v1

    .line 36
    move v7, v6

    .line 37
    :goto_1
    iget v8, p1, Lw9;->d:I

    .line 38
    .line 39
    iget-object v9, p0, Lx9;->a:Lvc9;

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    if-ge v6, v8, :cond_6

    .line 43
    .line 44
    iget v8, p1, Lw9;->b:I

    .line 45
    .line 46
    mul-int v11, v3, v6

    .line 47
    .line 48
    add-int/2addr v11, v8

    .line 49
    iget v8, p1, Lw9;->a:I

    .line 50
    .line 51
    invoke-virtual {p0, v11, v8}, Lx9;->l(II)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iget v11, p1, Lw9;->a:I

    .line 56
    .line 57
    if-eq v11, v4, :cond_3

    .line 58
    .line 59
    if-eq v11, v5, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    add-int/lit8 v12, v0, 0x1

    .line 63
    .line 64
    if-ne v8, v12, :cond_4

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    if-ne v8, v0, :cond_4

    .line 68
    .line 69
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_4
    :goto_3
    iget-object v12, p1, Lw9;->c:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {p0, v12, v11, v0, v7}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, v0, v2}, Lx9;->e(Lw9;I)V

    .line 79
    .line 80
    .line 81
    iput-object v10, v0, Lw9;->c:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v9, v0}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget v0, p1, Lw9;->a:I

    .line 87
    .line 88
    if-ne v0, v5, :cond_5

    .line 89
    .line 90
    add-int/2addr v2, v7

    .line 91
    :cond_5
    move v7, v1

    .line 92
    move v0, v8

    .line 93
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_6
    iget-object v1, p1, Lw9;->c:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v10, p1, Lw9;->c:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v9, p1}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    if-lez v7, :cond_7

    .line 104
    .line 105
    iget p1, p1, Lw9;->a:I

    .line 106
    .line 107
    invoke-virtual {p0, v1, p1, v0, v7}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1, v2}, Lx9;->e(Lw9;I)V

    .line 112
    .line 113
    .line 114
    iput-object v10, p1, Lw9;->c:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-virtual {v9, p1}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :cond_7
    return-void

    .line 120
    :cond_8
    const-string p0, "should not dispatch add or move for pre layout"

    .line 121
    .line 122
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final e(Lw9;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lx9;->d:Lrb;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lrb;->r(Lw9;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lw9;->a:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p1, Lw9;->d:I

    .line 15
    .line 16
    iget-object p1, p1, Lw9;->c:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lrb;->u(Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "only remove and update ops can be dispatched in first pass"

    .line 23
    .line 24
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget p1, p1, Lw9;->d:I

    .line 29
    .line 30
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->R(IIZ)V

    .line 36
    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    .line 39
    .line 40
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 41
    .line 42
    iget p2, p0, Lbh6;->c:I

    .line 43
    .line 44
    add-int/2addr p2, p1

    .line 45
    iput p2, p0, Lbh6;->c:I

    .line 46
    .line 47
    return-void
.end method

.method public final f(II)I
    .locals 5

    .line 1
    iget-object p0, p0, Lx9;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    :goto_0
    if-ge p2, v0, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lw9;

    .line 14
    .line 15
    iget v2, v1, Lw9;->a:I

    .line 16
    .line 17
    iget v3, v1, Lw9;->b:I

    .line 18
    .line 19
    const/16 v4, 0x8

    .line 20
    .line 21
    if-ne v2, v4, :cond_2

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    iget p1, v1, Lw9;->d:I

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-ge v3, p1, :cond_1

    .line 29
    .line 30
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    :cond_1
    iget v1, v1, Lw9;->d:I

    .line 33
    .line 34
    if-gt v1, p1, :cond_5

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    if-gt v3, p1, :cond_5

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    if-ne v2, v4, :cond_4

    .line 43
    .line 44
    iget v1, v1, Lw9;->d:I

    .line 45
    .line 46
    add-int/2addr v3, v1

    .line 47
    if-ge p1, v3, :cond_3

    .line 48
    .line 49
    const/4 p0, -0x1

    .line 50
    return p0

    .line 51
    :cond_3
    sub-int/2addr p1, v1

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const/4 v3, 0x1

    .line 54
    if-ne v2, v3, :cond_5

    .line 55
    .line 56
    iget v1, v1, Lw9;->d:I

    .line 57
    .line 58
    add-int/2addr p1, v1

    .line 59
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_6
    return p1
.end method

.method public final g()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lx9;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final h(Ljava/lang/Object;III)Lw9;
    .locals 0

    .line 1
    iget-object p0, p0, Lx9;->a:Lvc9;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvc9;->d()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lw9;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lw9;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput p2, p0, Lw9;->a:I

    .line 17
    .line 18
    iput p3, p0, Lw9;->b:I

    .line 19
    .line 20
    iput p4, p0, Lw9;->d:I

    .line 21
    .line 22
    iput-object p1, p0, Lw9;->c:Ljava/lang/Object;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    iput p2, p0, Lw9;->a:I

    .line 26
    .line 27
    iput p3, p0, Lw9;->b:I

    .line 28
    .line 29
    iput p4, p0, Lw9;->d:I

    .line 30
    .line 31
    iput-object p1, p0, Lw9;->c:Ljava/lang/Object;

    .line 32
    .line 33
    return-object p0
.end method

.method public final i(Lw9;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx9;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lw9;->a:I

    .line 7
    .line 8
    iget-object p0, p0, Lx9;->d:Lrb;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_3

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget v0, p1, Lw9;->b:I

    .line 24
    .line 25
    iget p1, p1, Lw9;->d:I

    .line 26
    .line 27
    invoke-virtual {p0, v0, p1}, Lrb;->w(II)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    const-string p0, "Unknown update op type for "

    .line 32
    .line 33
    invoke-static {p1, p0}, Lg84;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget v0, p1, Lw9;->b:I

    .line 38
    .line 39
    iget v1, p1, Lw9;->d:I

    .line 40
    .line 41
    iget-object p1, p1, Lw9;->c:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {p0, p1, v0, v1}, Lrb;->u(Ljava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget v0, p1, Lw9;->b:I

    .line 48
    .line 49
    iget p1, p1, Lw9;->d:I

    .line 50
    .line 51
    iget-object p0, p0, Lrb;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->R(IIZ)V

    .line 57
    .line 58
    .line 59
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    .line 60
    .line 61
    return-void

    .line 62
    :cond_3
    iget v0, p1, Lw9;->b:I

    .line 63
    .line 64
    iget p1, p1, Lw9;->d:I

    .line 65
    .line 66
    invoke-virtual {p0, v0, p1}, Lrb;->v(II)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final j()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lx9;->e:Lrb;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :cond_0
    :goto_0
    iget-object v2, v0, Lx9;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    sub-int/2addr v3, v4

    .line 16
    const/4 v6, 0x0

    .line 17
    :goto_1
    const/16 v7, 0x8

    .line 18
    .line 19
    const/4 v8, -0x1

    .line 20
    if-ltz v3, :cond_3

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    check-cast v9, Lw9;

    .line 27
    .line 28
    iget v9, v9, Lw9;->a:I

    .line 29
    .line 30
    if-ne v9, v7, :cond_1

    .line 31
    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    move v6, v4

    .line 36
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v3, v8

    .line 40
    :goto_2
    const/4 v6, 0x0

    .line 41
    const/4 v9, 0x2

    .line 42
    const/4 v10, 0x4

    .line 43
    if-eq v3, v8, :cond_22

    .line 44
    .line 45
    add-int/lit8 v7, v3, 0x1

    .line 46
    .line 47
    iget-object v11, v1, Lrb;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v11, Lx9;

    .line 50
    .line 51
    iget-object v12, v11, Lx9;->a:Lvc9;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    check-cast v13, Lw9;

    .line 58
    .line 59
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v14

    .line 63
    check-cast v14, Lw9;

    .line 64
    .line 65
    iget v15, v14, Lw9;->a:I

    .line 66
    .line 67
    if-eq v15, v4, :cond_1d

    .line 68
    .line 69
    if-eq v15, v9, :cond_b

    .line 70
    .line 71
    if-eq v15, v10, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget v5, v13, Lw9;->d:I

    .line 75
    .line 76
    iget v8, v14, Lw9;->b:I

    .line 77
    .line 78
    if-ge v5, v8, :cond_5

    .line 79
    .line 80
    add-int/lit8 v8, v8, -0x1

    .line 81
    .line 82
    iput v8, v14, Lw9;->b:I

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_5
    iget v9, v14, Lw9;->d:I

    .line 86
    .line 87
    add-int/2addr v8, v9

    .line 88
    if-ge v5, v8, :cond_6

    .line 89
    .line 90
    add-int/lit8 v9, v9, -0x1

    .line 91
    .line 92
    iput v9, v14, Lw9;->d:I

    .line 93
    .line 94
    iget v5, v13, Lw9;->b:I

    .line 95
    .line 96
    iget-object v8, v14, Lw9;->c:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {v11, v8, v10, v5, v4}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    goto :goto_4

    .line 103
    :cond_6
    :goto_3
    move-object v4, v6

    .line 104
    :goto_4
    iget v5, v13, Lw9;->b:I

    .line 105
    .line 106
    iget v8, v14, Lw9;->b:I

    .line 107
    .line 108
    if-gt v5, v8, :cond_7

    .line 109
    .line 110
    add-int/lit8 v8, v8, 0x1

    .line 111
    .line 112
    iput v8, v14, Lw9;->b:I

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_7
    iget v9, v14, Lw9;->d:I

    .line 116
    .line 117
    add-int/2addr v8, v9

    .line 118
    if-ge v5, v8, :cond_8

    .line 119
    .line 120
    sub-int/2addr v8, v5

    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    iget-object v9, v14, Lw9;->c:Ljava/lang/Object;

    .line 124
    .line 125
    invoke-virtual {v11, v9, v10, v5, v8}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget v9, v14, Lw9;->d:I

    .line 130
    .line 131
    sub-int/2addr v9, v8

    .line 132
    iput v9, v14, Lw9;->d:I

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_8
    :goto_5
    move-object v5, v6

    .line 136
    :goto_6
    invoke-virtual {v2, v7, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    iget v7, v14, Lw9;->d:I

    .line 140
    .line 141
    if-lez v7, :cond_9

    .line 142
    .line 143
    invoke-virtual {v2, v3, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iput-object v6, v14, Lw9;->c:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v12, v14}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    :goto_7
    if-eqz v4, :cond_a

    .line 156
    .line 157
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_a
    if-eqz v5, :cond_0

    .line 161
    .line 162
    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_b
    iget v8, v13, Lw9;->b:I

    .line 168
    .line 169
    iget v10, v13, Lw9;->d:I

    .line 170
    .line 171
    iget v15, v14, Lw9;->b:I

    .line 172
    .line 173
    if-ge v8, v10, :cond_d

    .line 174
    .line 175
    if-ne v15, v8, :cond_c

    .line 176
    .line 177
    iget v5, v14, Lw9;->d:I

    .line 178
    .line 179
    sub-int v8, v10, v8

    .line 180
    .line 181
    if-ne v5, v8, :cond_c

    .line 182
    .line 183
    move v5, v4

    .line 184
    :goto_8
    const/16 v16, 0x0

    .line 185
    .line 186
    goto :goto_9

    .line 187
    :cond_c
    const/4 v5, 0x0

    .line 188
    goto :goto_8

    .line 189
    :cond_d
    add-int/lit8 v5, v10, 0x1

    .line 190
    .line 191
    if-ne v15, v5, :cond_e

    .line 192
    .line 193
    iget v5, v14, Lw9;->d:I

    .line 194
    .line 195
    sub-int/2addr v8, v10

    .line 196
    if-ne v5, v8, :cond_e

    .line 197
    .line 198
    move v5, v4

    .line 199
    move/from16 v16, v5

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_e
    move/from16 v16, v4

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    :goto_9
    if-ge v10, v15, :cond_f

    .line 206
    .line 207
    add-int/lit8 v15, v15, -0x1

    .line 208
    .line 209
    iput v15, v14, Lw9;->b:I

    .line 210
    .line 211
    goto :goto_a

    .line 212
    :cond_f
    iget v8, v14, Lw9;->d:I

    .line 213
    .line 214
    add-int/2addr v15, v8

    .line 215
    if-ge v10, v15, :cond_10

    .line 216
    .line 217
    add-int/lit8 v8, v8, -0x1

    .line 218
    .line 219
    iput v8, v14, Lw9;->d:I

    .line 220
    .line 221
    iput v9, v13, Lw9;->a:I

    .line 222
    .line 223
    iput v4, v13, Lw9;->d:I

    .line 224
    .line 225
    iget v3, v14, Lw9;->d:I

    .line 226
    .line 227
    if-nez v3, :cond_0

    .line 228
    .line 229
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    iput-object v6, v14, Lw9;->c:Ljava/lang/Object;

    .line 233
    .line 234
    invoke-virtual {v12, v14}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_10
    :goto_a
    iget v4, v13, Lw9;->b:I

    .line 240
    .line 241
    iget v8, v14, Lw9;->b:I

    .line 242
    .line 243
    if-gt v4, v8, :cond_11

    .line 244
    .line 245
    add-int/lit8 v8, v8, 0x1

    .line 246
    .line 247
    iput v8, v14, Lw9;->b:I

    .line 248
    .line 249
    goto :goto_b

    .line 250
    :cond_11
    iget v10, v14, Lw9;->d:I

    .line 251
    .line 252
    add-int/2addr v8, v10

    .line 253
    if-ge v4, v8, :cond_12

    .line 254
    .line 255
    sub-int/2addr v8, v4

    .line 256
    add-int/lit8 v4, v4, 0x1

    .line 257
    .line 258
    invoke-virtual {v11, v6, v9, v4, v8}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    iget v8, v13, Lw9;->b:I

    .line 263
    .line 264
    iget v9, v14, Lw9;->b:I

    .line 265
    .line 266
    sub-int/2addr v8, v9

    .line 267
    iput v8, v14, Lw9;->d:I

    .line 268
    .line 269
    goto :goto_c

    .line 270
    :cond_12
    :goto_b
    move-object v4, v6

    .line 271
    :goto_c
    if-eqz v5, :cond_13

    .line 272
    .line 273
    invoke-virtual {v2, v3, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    iput-object v6, v13, Lw9;->c:Ljava/lang/Object;

    .line 280
    .line 281
    invoke-virtual {v12, v13}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_13
    if-eqz v16, :cond_17

    .line 287
    .line 288
    if-eqz v4, :cond_15

    .line 289
    .line 290
    iget v5, v13, Lw9;->b:I

    .line 291
    .line 292
    iget v6, v4, Lw9;->b:I

    .line 293
    .line 294
    if-le v5, v6, :cond_14

    .line 295
    .line 296
    iget v6, v4, Lw9;->d:I

    .line 297
    .line 298
    sub-int/2addr v5, v6

    .line 299
    iput v5, v13, Lw9;->b:I

    .line 300
    .line 301
    :cond_14
    iget v5, v13, Lw9;->d:I

    .line 302
    .line 303
    iget v6, v4, Lw9;->b:I

    .line 304
    .line 305
    if-le v5, v6, :cond_15

    .line 306
    .line 307
    iget v6, v4, Lw9;->d:I

    .line 308
    .line 309
    sub-int/2addr v5, v6

    .line 310
    iput v5, v13, Lw9;->d:I

    .line 311
    .line 312
    :cond_15
    iget v5, v13, Lw9;->b:I

    .line 313
    .line 314
    iget v6, v14, Lw9;->b:I

    .line 315
    .line 316
    if-le v5, v6, :cond_16

    .line 317
    .line 318
    iget v6, v14, Lw9;->d:I

    .line 319
    .line 320
    sub-int/2addr v5, v6

    .line 321
    iput v5, v13, Lw9;->b:I

    .line 322
    .line 323
    :cond_16
    iget v5, v13, Lw9;->d:I

    .line 324
    .line 325
    iget v6, v14, Lw9;->b:I

    .line 326
    .line 327
    if-le v5, v6, :cond_1b

    .line 328
    .line 329
    iget v6, v14, Lw9;->d:I

    .line 330
    .line 331
    sub-int/2addr v5, v6

    .line 332
    iput v5, v13, Lw9;->d:I

    .line 333
    .line 334
    goto :goto_d

    .line 335
    :cond_17
    if-eqz v4, :cond_19

    .line 336
    .line 337
    iget v5, v13, Lw9;->b:I

    .line 338
    .line 339
    iget v6, v4, Lw9;->b:I

    .line 340
    .line 341
    if-lt v5, v6, :cond_18

    .line 342
    .line 343
    iget v6, v4, Lw9;->d:I

    .line 344
    .line 345
    sub-int/2addr v5, v6

    .line 346
    iput v5, v13, Lw9;->b:I

    .line 347
    .line 348
    :cond_18
    iget v5, v13, Lw9;->d:I

    .line 349
    .line 350
    iget v6, v4, Lw9;->b:I

    .line 351
    .line 352
    if-lt v5, v6, :cond_19

    .line 353
    .line 354
    iget v6, v4, Lw9;->d:I

    .line 355
    .line 356
    sub-int/2addr v5, v6

    .line 357
    iput v5, v13, Lw9;->d:I

    .line 358
    .line 359
    :cond_19
    iget v5, v13, Lw9;->b:I

    .line 360
    .line 361
    iget v6, v14, Lw9;->b:I

    .line 362
    .line 363
    if-lt v5, v6, :cond_1a

    .line 364
    .line 365
    iget v6, v14, Lw9;->d:I

    .line 366
    .line 367
    sub-int/2addr v5, v6

    .line 368
    iput v5, v13, Lw9;->b:I

    .line 369
    .line 370
    :cond_1a
    iget v5, v13, Lw9;->d:I

    .line 371
    .line 372
    iget v6, v14, Lw9;->b:I

    .line 373
    .line 374
    if-lt v5, v6, :cond_1b

    .line 375
    .line 376
    iget v6, v14, Lw9;->d:I

    .line 377
    .line 378
    sub-int/2addr v5, v6

    .line 379
    iput v5, v13, Lw9;->d:I

    .line 380
    .line 381
    :cond_1b
    :goto_d
    invoke-virtual {v2, v3, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    iget v5, v13, Lw9;->b:I

    .line 385
    .line 386
    iget v6, v13, Lw9;->d:I

    .line 387
    .line 388
    if-eq v5, v6, :cond_1c

    .line 389
    .line 390
    invoke-virtual {v2, v7, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    goto :goto_e

    .line 394
    :cond_1c
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    :goto_e
    if-eqz v4, :cond_0

    .line 398
    .line 399
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :cond_1d
    iget v4, v13, Lw9;->d:I

    .line 405
    .line 406
    iget v5, v14, Lw9;->b:I

    .line 407
    .line 408
    if-ge v4, v5, :cond_1e

    .line 409
    .line 410
    move/from16 v16, v8

    .line 411
    .line 412
    goto :goto_f

    .line 413
    :cond_1e
    const/16 v16, 0x0

    .line 414
    .line 415
    :goto_f
    iget v6, v13, Lw9;->b:I

    .line 416
    .line 417
    if-ge v6, v5, :cond_1f

    .line 418
    .line 419
    add-int/lit8 v16, v16, 0x1

    .line 420
    .line 421
    :cond_1f
    if-gt v5, v6, :cond_20

    .line 422
    .line 423
    iget v5, v14, Lw9;->d:I

    .line 424
    .line 425
    add-int/2addr v6, v5

    .line 426
    iput v6, v13, Lw9;->b:I

    .line 427
    .line 428
    :cond_20
    iget v5, v14, Lw9;->b:I

    .line 429
    .line 430
    if-gt v5, v4, :cond_21

    .line 431
    .line 432
    iget v6, v14, Lw9;->d:I

    .line 433
    .line 434
    add-int/2addr v4, v6

    .line 435
    iput v4, v13, Lw9;->d:I

    .line 436
    .line 437
    :cond_21
    add-int v5, v5, v16

    .line 438
    .line 439
    iput v5, v14, Lw9;->b:I

    .line 440
    .line 441
    invoke-virtual {v2, v3, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v7, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    goto/16 :goto_0

    .line 448
    .line 449
    :cond_22
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    const/4 v3, 0x0

    .line 454
    :goto_10
    if-ge v3, v1, :cond_36

    .line 455
    .line 456
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    check-cast v5, Lw9;

    .line 461
    .line 462
    iget v11, v5, Lw9;->a:I

    .line 463
    .line 464
    if-eq v11, v4, :cond_35

    .line 465
    .line 466
    iget-object v12, v0, Lx9;->a:Lvc9;

    .line 467
    .line 468
    iget-object v13, v0, Lx9;->d:Lrb;

    .line 469
    .line 470
    if-eq v11, v9, :cond_2c

    .line 471
    .line 472
    if-eq v11, v10, :cond_24

    .line 473
    .line 474
    if-eq v11, v7, :cond_23

    .line 475
    .line 476
    goto/16 :goto_1a

    .line 477
    .line 478
    :cond_23
    invoke-virtual {v0, v5}, Lx9;->i(Lw9;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_1a

    .line 482
    .line 483
    :cond_24
    iget v11, v5, Lw9;->b:I

    .line 484
    .line 485
    iget v14, v5, Lw9;->d:I

    .line 486
    .line 487
    add-int/2addr v14, v11

    .line 488
    move v15, v11

    .line 489
    const/4 v7, 0x0

    .line 490
    :goto_11
    if-ge v11, v14, :cond_29

    .line 491
    .line 492
    invoke-virtual {v13, v11}, Lrb;->s(I)Lfh6;

    .line 493
    .line 494
    .line 495
    move-result-object v17

    .line 496
    if-nez v17, :cond_27

    .line 497
    .line 498
    invoke-virtual {v0, v11}, Lx9;->a(I)Z

    .line 499
    .line 500
    .line 501
    move-result v17

    .line 502
    if-eqz v17, :cond_25

    .line 503
    .line 504
    goto :goto_12

    .line 505
    :cond_25
    if-ne v8, v4, :cond_26

    .line 506
    .line 507
    iget-object v8, v5, Lw9;->c:Ljava/lang/Object;

    .line 508
    .line 509
    invoke-virtual {v0, v8, v10, v15, v7}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    invoke-virtual {v0, v7}, Lx9;->i(Lw9;)V

    .line 514
    .line 515
    .line 516
    move v15, v11

    .line 517
    const/4 v7, 0x0

    .line 518
    :cond_26
    const/4 v8, 0x0

    .line 519
    goto :goto_13

    .line 520
    :cond_27
    :goto_12
    if-nez v8, :cond_28

    .line 521
    .line 522
    iget-object v8, v5, Lw9;->c:Ljava/lang/Object;

    .line 523
    .line 524
    invoke-virtual {v0, v8, v10, v15, v7}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    invoke-virtual {v0, v7}, Lx9;->d(Lw9;)V

    .line 529
    .line 530
    .line 531
    move v15, v11

    .line 532
    const/4 v7, 0x0

    .line 533
    :cond_28
    move v8, v4

    .line 534
    :goto_13
    add-int/2addr v7, v4

    .line 535
    add-int/lit8 v11, v11, 0x1

    .line 536
    .line 537
    goto :goto_11

    .line 538
    :cond_29
    iget v11, v5, Lw9;->d:I

    .line 539
    .line 540
    if-eq v7, v11, :cond_2a

    .line 541
    .line 542
    iget-object v11, v5, Lw9;->c:Ljava/lang/Object;

    .line 543
    .line 544
    iput-object v6, v5, Lw9;->c:Ljava/lang/Object;

    .line 545
    .line 546
    invoke-virtual {v12, v5}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v11, v10, v15, v7}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    :cond_2a
    if-nez v8, :cond_2b

    .line 554
    .line 555
    invoke-virtual {v0, v5}, Lx9;->d(Lw9;)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_1a

    .line 559
    .line 560
    :cond_2b
    invoke-virtual {v0, v5}, Lx9;->i(Lw9;)V

    .line 561
    .line 562
    .line 563
    goto :goto_1a

    .line 564
    :cond_2c
    iget v7, v5, Lw9;->b:I

    .line 565
    .line 566
    iget v8, v5, Lw9;->d:I

    .line 567
    .line 568
    add-int/2addr v8, v7

    .line 569
    move v11, v7

    .line 570
    const/4 v14, 0x0

    .line 571
    const/4 v15, -0x1

    .line 572
    :goto_14
    if-ge v11, v8, :cond_32

    .line 573
    .line 574
    invoke-virtual {v13, v11}, Lrb;->s(I)Lfh6;

    .line 575
    .line 576
    .line 577
    move-result-object v17

    .line 578
    if-nez v17, :cond_2f

    .line 579
    .line 580
    invoke-virtual {v0, v11}, Lx9;->a(I)Z

    .line 581
    .line 582
    .line 583
    move-result v17

    .line 584
    if-eqz v17, :cond_2d

    .line 585
    .line 586
    goto :goto_16

    .line 587
    :cond_2d
    if-ne v15, v4, :cond_2e

    .line 588
    .line 589
    invoke-virtual {v0, v6, v9, v7, v14}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 590
    .line 591
    .line 592
    move-result-object v15

    .line 593
    invoke-virtual {v0, v15}, Lx9;->i(Lw9;)V

    .line 594
    .line 595
    .line 596
    move v15, v4

    .line 597
    goto :goto_15

    .line 598
    :cond_2e
    const/4 v15, 0x0

    .line 599
    :goto_15
    const/16 v17, 0x0

    .line 600
    .line 601
    goto :goto_18

    .line 602
    :cond_2f
    :goto_16
    if-nez v15, :cond_30

    .line 603
    .line 604
    invoke-virtual {v0, v6, v9, v7, v14}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 605
    .line 606
    .line 607
    move-result-object v15

    .line 608
    invoke-virtual {v0, v15}, Lx9;->d(Lw9;)V

    .line 609
    .line 610
    .line 611
    move v15, v4

    .line 612
    goto :goto_17

    .line 613
    :cond_30
    const/4 v15, 0x0

    .line 614
    :goto_17
    move/from16 v17, v4

    .line 615
    .line 616
    :goto_18
    if-eqz v15, :cond_31

    .line 617
    .line 618
    sub-int/2addr v11, v14

    .line 619
    sub-int/2addr v8, v14

    .line 620
    move v14, v4

    .line 621
    goto :goto_19

    .line 622
    :cond_31
    add-int/lit8 v14, v14, 0x1

    .line 623
    .line 624
    :goto_19
    add-int/2addr v11, v4

    .line 625
    move/from16 v15, v17

    .line 626
    .line 627
    goto :goto_14

    .line 628
    :cond_32
    iget v8, v5, Lw9;->d:I

    .line 629
    .line 630
    if-eq v14, v8, :cond_33

    .line 631
    .line 632
    iput-object v6, v5, Lw9;->c:Ljava/lang/Object;

    .line 633
    .line 634
    invoke-virtual {v12, v5}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v6, v9, v7, v14}, Lx9;->h(Ljava/lang/Object;III)Lw9;

    .line 638
    .line 639
    .line 640
    move-result-object v5

    .line 641
    :cond_33
    if-nez v15, :cond_34

    .line 642
    .line 643
    invoke-virtual {v0, v5}, Lx9;->d(Lw9;)V

    .line 644
    .line 645
    .line 646
    goto :goto_1a

    .line 647
    :cond_34
    invoke-virtual {v0, v5}, Lx9;->i(Lw9;)V

    .line 648
    .line 649
    .line 650
    goto :goto_1a

    .line 651
    :cond_35
    invoke-virtual {v0, v5}, Lx9;->i(Lw9;)V

    .line 652
    .line 653
    .line 654
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    .line 655
    .line 656
    const/16 v7, 0x8

    .line 657
    .line 658
    const/4 v8, -0x1

    .line 659
    goto/16 :goto_10

    .line 660
    .line 661
    :cond_36
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 662
    .line 663
    .line 664
    return-void
.end method

.method public final k(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lw9;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-object v3, v2, Lw9;->c:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v3, p0, Lx9;->a:Lvc9;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final l(II)I
    .locals 9

    .line 1
    iget-object v0, p0, Lx9;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    :goto_0
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ltz v1, :cond_d

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lw9;

    .line 18
    .line 19
    iget v5, v4, Lw9;->a:I

    .line 20
    .line 21
    iget v6, v4, Lw9;->b:I

    .line 22
    .line 23
    const/4 v7, 0x2

    .line 24
    if-ne v5, v3, :cond_8

    .line 25
    .line 26
    iget v3, v4, Lw9;->d:I

    .line 27
    .line 28
    if-ge v6, v3, :cond_0

    .line 29
    .line 30
    move v8, v3

    .line 31
    move v5, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v5, v3

    .line 34
    move v8, v6

    .line 35
    :goto_1
    if-lt p1, v5, :cond_6

    .line 36
    .line 37
    if-gt p1, v8, :cond_6

    .line 38
    .line 39
    if-ne v5, v6, :cond_3

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    iput v3, v4, Lw9;->d:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    if-ne p2, v7, :cond_2

    .line 49
    .line 50
    add-int/lit8 v3, v3, -0x1

    .line 51
    .line 52
    iput v3, v4, Lw9;->d:I

    .line 53
    .line 54
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_3
    if-ne p2, v2, :cond_4

    .line 58
    .line 59
    add-int/lit8 v6, v6, 0x1

    .line 60
    .line 61
    iput v6, v4, Lw9;->b:I

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    if-ne p2, v7, :cond_5

    .line 65
    .line 66
    add-int/lit8 v6, v6, -0x1

    .line 67
    .line 68
    iput v6, v4, Lw9;->b:I

    .line 69
    .line 70
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_6
    if-ge p1, v6, :cond_c

    .line 74
    .line 75
    if-ne p2, v2, :cond_7

    .line 76
    .line 77
    add-int/lit8 v6, v6, 0x1

    .line 78
    .line 79
    iput v6, v4, Lw9;->b:I

    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    iput v3, v4, Lw9;->d:I

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    if-ne p2, v7, :cond_c

    .line 87
    .line 88
    add-int/lit8 v6, v6, -0x1

    .line 89
    .line 90
    iput v6, v4, Lw9;->b:I

    .line 91
    .line 92
    add-int/lit8 v3, v3, -0x1

    .line 93
    .line 94
    iput v3, v4, Lw9;->d:I

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    if-gt v6, p1, :cond_a

    .line 98
    .line 99
    if-ne v5, v2, :cond_9

    .line 100
    .line 101
    iget v3, v4, Lw9;->d:I

    .line 102
    .line 103
    sub-int/2addr p1, v3

    .line 104
    goto :goto_4

    .line 105
    :cond_9
    if-ne v5, v7, :cond_c

    .line 106
    .line 107
    iget v3, v4, Lw9;->d:I

    .line 108
    .line 109
    add-int/2addr p1, v3

    .line 110
    goto :goto_4

    .line 111
    :cond_a
    if-ne p2, v2, :cond_b

    .line 112
    .line 113
    add-int/lit8 v6, v6, 0x1

    .line 114
    .line 115
    iput v6, v4, Lw9;->b:I

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_b
    if-ne p2, v7, :cond_c

    .line 119
    .line 120
    add-int/lit8 v6, v6, -0x1

    .line 121
    .line 122
    iput v6, v4, Lw9;->b:I

    .line 123
    .line 124
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    sub-int/2addr p2, v2

    .line 132
    :goto_5
    if-ltz p2, :cond_11

    .line 133
    .line 134
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lw9;

    .line 139
    .line 140
    iget v2, v1, Lw9;->a:I

    .line 141
    .line 142
    iget v4, v1, Lw9;->d:I

    .line 143
    .line 144
    iget-object v5, p0, Lx9;->a:Lvc9;

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    if-ne v2, v3, :cond_f

    .line 148
    .line 149
    iget v2, v1, Lw9;->b:I

    .line 150
    .line 151
    if-eq v4, v2, :cond_e

    .line 152
    .line 153
    if-gez v4, :cond_10

    .line 154
    .line 155
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    iput-object v6, v1, Lw9;->c:Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {v5, v1}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_f
    if-gtz v4, :cond_10

    .line 165
    .line 166
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    iput-object v6, v1, Lw9;->c:Ljava/lang/Object;

    .line 170
    .line 171
    invoke-virtual {v5, v1}, Lvc9;->c(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_11
    return p1
.end method
