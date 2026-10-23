.class public final Lk53;
.super Lsg6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lcom/l4digital/fastscroll/FastScroller;


# direct methods
.method public constructor <init>(Lcom/l4digital/fastscroll/FastScroller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk53;->a:Lcom/l4digital/fastscroll/FastScroller;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lk53;->a:Lcom/l4digital/fastscroll/FastScroller;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->O:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    if-eqz p2, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p2, v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->K:Landroid/view/ViewPropertyAnimator;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->J:Landroid/view/View;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/l4digital/fastscroll/FastScroller;->k()V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-boolean p1, p0, Lcom/l4digital/fastscroll/FastScroller;->n:Z

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget-object p1, p0, Lcom/l4digital/fastscroll/FastScroller;->N:Lp53;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/l4digital/fastscroll/FastScroller;->j()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iget-boolean p2, p0, Lcom/l4digital/fastscroll/FastScroller;->f:Z

    .line 58
    .line 59
    if-eqz p2, :cond_4

    .line 60
    .line 61
    iget-object p2, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-wide/16 v0, 0x3e8

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_1
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 8

    .line 1
    iget-object p0, p0, Lk53;->a:Lcom/l4digital/fastscroll/FastScroller;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/l4digital/fastscroll/FastScroller;->t:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/l4digital/fastscroll/FastScroller;->g(Landroidx/recyclerview/widget/RecyclerView;)F

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {p0, p2}, Lcom/l4digital/fastscroll/FastScroller;->c(Lcom/l4digital/fastscroll/FastScroller;F)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/l4digital/fastscroll/FastScroller;->n:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/l4digital/fastscroll/FastScroller;->f(F)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget-object v0, p0, Lcom/l4digital/fastscroll/FastScroller;->I:Landroid/widget/TextView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/l4digital/fastscroll/FastScroller;->N:Lp53;

    .line 35
    .line 36
    invoke-interface {v1, p2}, Lp53;->a(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p2, p0, Lcom/l4digital/fastscroll/FastScroller;->H:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 44
    .line 45
    if-eqz p2, :cond_8

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_8

    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/a;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    instance-of v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 58
    .line 59
    const/4 v1, -0x1

    .line 60
    const/4 v2, 0x1

    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroidx/recyclerview/widget/a;->G()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p2, v3, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b1(IIZ)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-nez p2, :cond_1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    invoke-static {p2}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    instance-of v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 87
    .line 88
    iget v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 89
    .line 90
    new-array v0, v0, [I

    .line 91
    .line 92
    move v4, v3

    .line 93
    :goto_0
    iget v5, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 94
    .line 95
    if-ge v4, v5, :cond_4

    .line 96
    .line 97
    iget-object v5, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 98
    .line 99
    aget-object v5, v5, v4

    .line 100
    .line 101
    iget-object v6, v5, Lp35;->g:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 104
    .line 105
    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 106
    .line 107
    iget-object v7, v5, Lp35;->f:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v7, Ljava/util/ArrayList;

    .line 110
    .line 111
    if-eqz v6, :cond_3

    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    sub-int/2addr v6, v2

    .line 118
    invoke-virtual {v5, v6, v1, v2, v3}, Lp35;->g(IIZZ)I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-virtual {v5, v3, v6, v2, v3}, Lp35;->g(IIZZ)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    :goto_1
    aput v5, v0, v4

    .line 132
    .line 133
    add-int/lit8 v4, v4, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    aget v1, v0, v3

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    move v1, v3

    .line 140
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-nez p2, :cond_6

    .line 145
    .line 146
    move p1, v3

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    :goto_3
    iget-object p0, p0, Lcom/l4digital/fastscroll/FastScroller;->H:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 157
    .line 158
    if-nez v1, :cond_7

    .line 159
    .line 160
    if-ltz p1, :cond_7

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_7
    move v2, v3

    .line 164
    :goto_4
    invoke-virtual {p0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 165
    .line 166
    .line 167
    :cond_8
    return-void
.end method
