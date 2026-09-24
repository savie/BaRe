.class public abstract Lng6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Lln5;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(Lfh6;)V
    .locals 2

    .line 1
    iget v0, p0, Lfh6;->j:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lfh6;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    and-int/lit8 v0, v0, 0x4

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lfh6;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->I(Lfh6;)I

    .line 20
    .line 21
    .line 22
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lfh6;Lfh6;Lmg6;Lmg6;)Z
.end method

.method public final c(Lfh6;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lng6;->a:Lln5;

    .line 2
    .line 3
    if-eqz p0, :cond_8

    .line 4
    .line 5
    iget-object p0, p0, Lln5;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Lfh6;->o(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p1, Lfh6;->a:Landroid/view/View;

    .line 14
    .line 15
    iget-object v2, p1, Lfh6;->h:Lfh6;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, p1, Lfh6;->i:Lfh6;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    iput-object v3, p1, Lfh6;->h:Lfh6;

    .line 25
    .line 26
    :cond_0
    iput-object v3, p1, Lfh6;->i:Lfh6;

    .line 27
    .line 28
    iget v2, p1, Lfh6;->j:I

    .line 29
    .line 30
    and-int/lit8 v2, v2, 0x10

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->j0()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 42
    .line 43
    iget-object v4, v3, Lj61;->b:Li61;

    .line 44
    .line 45
    iget-object v5, v3, Lj61;->a:Lom5;

    .line 46
    .line 47
    iget v6, v3, Lj61;->d:I

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    if-ne v6, v0, :cond_3

    .line 51
    .line 52
    iget-object v0, v3, Lj61;->e:Landroid/view/View;

    .line 53
    .line 54
    if-ne v0, v1, :cond_2

    .line 55
    .line 56
    :goto_0
    move v0, v7

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const-string p0, "Cannot call removeViewIfHidden within removeView(At) for a different view"

    .line 59
    .line 60
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    const/4 v8, 0x2

    .line 65
    if-eq v6, v8, :cond_7

    .line 66
    .line 67
    :try_start_0
    iput v8, v3, Lj61;->d:I

    .line 68
    .line 69
    iget-object v6, v5, Lom5;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    .line 73
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/4 v8, -0x1

    .line 78
    if-ne v6, v8, :cond_4

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Lj61;->k(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    :goto_1
    iput v7, v3, Lj61;->d:I

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    :try_start_1
    invoke-virtual {v4, v6}, Li61;->d(I)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_5

    .line 93
    .line 94
    invoke-virtual {v4, v6}, Li61;->f(I)Z

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1}, Lj61;->k(Landroid/view/View;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6}, Lom5;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    iput v7, v3, Lj61;->d:I

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :goto_2
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v2, v3}, Lvg6;->m(Lfh6;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Lvg6;->j(Lfh6;)V

    .line 117
    .line 118
    .line 119
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v3, "after removing animated view: "

    .line 126
    .line 127
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v3, ", "

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const-string v3, "RecyclerView"

    .line 146
    .line 147
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :cond_6
    xor-int/lit8 v2, v0, 0x1

    .line 151
    .line 152
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->l0(Z)V

    .line 153
    .line 154
    .line 155
    if-nez v0, :cond_8

    .line 156
    .line 157
    invoke-virtual {p1}, Lfh6;->k()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_8

    .line 162
    .line 163
    invoke-virtual {p0, v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :goto_3
    iput v7, v3, Lj61;->d:I

    .line 168
    .line 169
    throw p0

    .line 170
    :cond_7
    const-string p0, "Cannot call removeViewIfHidden within removeViewIfHidden"

    .line 171
    .line 172
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_4
    return-void
.end method

.method public abstract d(Lfh6;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
