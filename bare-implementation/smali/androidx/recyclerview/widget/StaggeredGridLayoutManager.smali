.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lah6;


# instance fields
.field public H:I

.field public I:[Lp35;

.field public final J:Lgu2;

.field public final K:Lgu2;

.field public final L:I

.field public M:I

.field public final N:Lms4;

.field public O:Z

.field public P:Z

.field public Q:Ljava/util/BitSet;

.field public R:I

.field public S:I

.field public final T:Lc00;

.field public final U:I

.field public V:Z

.field public W:Z

.field public X:Lzk7;

.field public final Y:Landroid/graphics/Rect;

.field public final Z:Lwk7;

.field public final a0:Z

.field public b0:[I

.field public final c0:Laq2;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 144
    invoke-direct {p0}, Landroidx/recyclerview/widget/a;-><init>()V

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    const/4 v1, 0x0

    .line 146
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 147
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 148
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    const/high16 v0, -0x80000000

    .line 149
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 150
    new-instance v0, Lc00;

    const/16 v2, 0xd

    .line 151
    invoke-direct {v0, v2, v1}, Lc00;-><init>(IZ)V

    .line 152
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    const/4 v0, 0x2

    .line 153
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U:I

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y:Landroid/graphics/Rect;

    .line 155
    new-instance v0, Lwk7;

    invoke-direct {v0, p0}, Lwk7;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z:Lwk7;

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 157
    new-instance v1, Laq2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Laq2;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c0:Laq2;

    .line 158
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 159
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o1(I)V

    .line 160
    new-instance p1, Lms4;

    invoke-direct {p1}, Lms4;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 161
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    invoke-static {p0, p1}, Lgu2;->b(Landroidx/recyclerview/widget/a;I)Lgu2;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 162
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    sub-int/2addr v0, p1

    .line 163
    invoke-static {p0, v0}, Lgu2;->b(Landroidx/recyclerview/widget/a;I)Lgu2;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lgu2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 11
    .line 12
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 13
    .line 14
    const/high16 v0, -0x80000000

    .line 15
    .line 16
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 17
    .line 18
    new-instance v0, Lc00;

    .line 19
    .line 20
    const/16 v2, 0xd

    .line 21
    .line 22
    invoke-direct {v0, v2, v1}, Lc00;-><init>(IZ)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U:I

    .line 29
    .line 30
    new-instance v0, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y:Landroid/graphics/Rect;

    .line 36
    .line 37
    new-instance v0, Lwk7;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lwk7;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z:Lwk7;

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 46
    .line 47
    new-instance v1, Laq2;

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    invoke-direct {v1, p0, v2}, Laq2;-><init>(Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c0:Laq2;

    .line 54
    .line 55
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/a;->S(Landroid/content/Context;Landroid/util/AttributeSet;II)Lpg6;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget p2, p1, Lpg6;->a:I

    .line 60
    .line 61
    const/4 p3, 0x0

    .line 62
    if-eqz p2, :cond_1

    .line 63
    .line 64
    if-ne p2, v0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string p0, "invalid orientation."

    .line 68
    .line 69
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p3

    .line 73
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 77
    .line 78
    if-ne p2, p4, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 82
    .line 83
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 84
    .line 85
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lgu2;

    .line 86
    .line 87
    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 88
    .line 89
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lgu2;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget p2, p1, Lpg6;->b:I

    .line 95
    .line 96
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o1(I)V

    .line 97
    .line 98
    .line 99
    iget-boolean p1, p1, Lpg6;->c:Z

    .line 100
    .line 101
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 105
    .line 106
    if-eqz p2, :cond_3

    .line 107
    .line 108
    iget-boolean p3, p2, Lzk7;->n:Z

    .line 109
    .line 110
    if-eq p3, p1, :cond_3

    .line 111
    .line 112
    iput-boolean p1, p2, Lzk7;->n:Z

    .line 113
    .line 114
    :cond_3
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lms4;

    .line 120
    .line 121
    invoke-direct {p1}, Lms4;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 125
    .line 126
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 127
    .line 128
    invoke-static {p0, p1}, Lgu2;->b(Landroidx/recyclerview/widget/a;I)Lgu2;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 133
    .line 134
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 135
    .line 136
    sub-int/2addr v0, p1

    .line 137
    invoke-static {p0, v0}, Lgu2;->b(Landroidx/recyclerview/widget/a;I)Lgu2;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lgu2;

    .line 142
    .line 143
    return-void
.end method

.method public static r1(III)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    return p0

    .line 20
    :cond_2
    :goto_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sub-int/2addr p0, p1

    .line 25
    sub-int/2addr p0, p2

    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method


# virtual methods
.method public final C()Lqg6;
    .locals 2

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, -0x2

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lxk7;

    .line 8
    .line 9
    invoke-direct {p0, v1, v0}, Lqg6;-><init>(II)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lxk7;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lqg6;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final C0(ILvg6;Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m1(ILvg6;Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final D(Landroid/content/Context;Landroid/util/AttributeSet;)Lqg6;
    .locals 0

    .line 1
    new-instance p0, Lxk7;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lqg6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final D0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Lzk7;->a:I

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lzk7;->d:[I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lzk7;->c:I

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, v0, Lzk7;->a:I

    .line 17
    .line 18
    iput v1, v0, Lzk7;->b:I

    .line 19
    .line 20
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 21
    .line 22
    const/high16 p1, -0x80000000

    .line 23
    .line 24
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final E(Landroid/view/ViewGroup$LayoutParams;)Lqg6;
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lxk7;

    .line 6
    .line 7
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lqg6;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p0, Lxk7;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lqg6;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final E0(ILvg6;Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m1(ILvg6;Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final H0(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v2

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    sget-object v2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/a;->r(III)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 42
    .line 43
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 44
    .line 45
    mul-int/2addr p3, v0

    .line 46
    add-int/2addr p3, v1

    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/a;->r(III)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    add-int/2addr p1, v1

    .line 63
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    sget-object v1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/a;->r(III)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 76
    .line 77
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 78
    .line 79
    mul-int/2addr p1, v0

    .line 80
    add-int/2addr p1, v2

    .line 81
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/a;->r(III)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    :goto_0
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final I(Lvg6;Lbh6;)I
    .locals 1

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 7
    .line 8
    invoke-virtual {p2}, Lbh6;->b()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method public final N0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    new-instance v0, Lav4;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lav4;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput p2, v0, Lav4;->a:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->O0(Lav4;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final P0()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final Q0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U:I

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-boolean v0, p0, Landroidx/recyclerview/widget/a;->k:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()I

    .line 34
    .line 35
    .line 36
    :goto_0
    if-nez v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c1()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 45
    .line 46
    invoke-virtual {v0}, Lc00;->a()V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Landroidx/recyclerview/widget/a;->f:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 53
    .line 54
    .line 55
    return v0

    .line 56
    :cond_2
    :goto_1
    return v1
.end method

.method public final R0(Lbh6;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 22
    .line 23
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 26
    .line 27
    move-object v5, p0

    .line 28
    move-object v1, p1

    .line 29
    invoke-static/range {v1 .. v7}, Lg67;->i(Lbh6;Lgu2;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/a;ZZ)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final S0(Lvg6;Lms4;Lbh6;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q:Ljava/util/BitSet;

    .line 8
    .line 9
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    invoke-virtual {v3, v5, v4, v6}, Ljava/util/BitSet;->set(IIZ)V

    .line 14
    .line 15
    .line 16
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 17
    .line 18
    iget-boolean v4, v3, Lms4;->i:Z

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    iget v4, v2, Lms4;->e:I

    .line 23
    .line 24
    if-ne v4, v6, :cond_0

    .line 25
    .line 26
    const v4, 0x7fffffff

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/high16 v4, -0x80000000

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v4, v2, Lms4;->e:I

    .line 34
    .line 35
    if-ne v4, v6, :cond_2

    .line 36
    .line 37
    iget v4, v2, Lms4;->g:I

    .line 38
    .line 39
    iget v9, v2, Lms4;->b:I

    .line 40
    .line 41
    add-int/2addr v4, v9

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget v4, v2, Lms4;->f:I

    .line 44
    .line 45
    iget v9, v2, Lms4;->b:I

    .line 46
    .line 47
    sub-int/2addr v4, v9

    .line 48
    :goto_0
    iget v9, v2, Lms4;->e:I

    .line 49
    .line 50
    move v10, v5

    .line 51
    :goto_1
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 52
    .line 53
    if-ge v10, v11, :cond_4

    .line 54
    .line 55
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 56
    .line 57
    aget-object v11, v11, v10

    .line 58
    .line 59
    iget-object v11, v11, Lp35;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v11, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    if-eqz v11, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 71
    .line 72
    aget-object v11, v11, v10

    .line 73
    .line 74
    invoke-virtual {v0, v11, v9, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q1(Lp35;II)V

    .line 75
    .line 76
    .line 77
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    iget-boolean v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 81
    .line 82
    iget-object v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 83
    .line 84
    if-eqz v9, :cond_5

    .line 85
    .line 86
    invoke-virtual {v10}, Lgu2;->i()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    invoke-virtual {v10}, Lgu2;->m()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    :goto_3
    move v11, v5

    .line 96
    :goto_4
    iget v12, v2, Lms4;->c:I

    .line 97
    .line 98
    const/4 v13, -0x1

    .line 99
    if-ltz v12, :cond_1c

    .line 100
    .line 101
    invoke-virtual/range {p3 .. p3}, Lbh6;->b()I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-ge v12, v14, :cond_1c

    .line 106
    .line 107
    iget-boolean v12, v3, Lms4;->i:Z

    .line 108
    .line 109
    if-nez v12, :cond_6

    .line 110
    .line 111
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q:Ljava/util/BitSet;

    .line 112
    .line 113
    invoke-virtual {v12}, Ljava/util/BitSet;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    if-nez v12, :cond_1c

    .line 118
    .line 119
    :cond_6
    iget v11, v2, Lms4;->c:I

    .line 120
    .line 121
    invoke-virtual {v1, v11}, Lvg6;->d(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    iget v12, v2, Lms4;->c:I

    .line 126
    .line 127
    iget v14, v2, Lms4;->d:I

    .line 128
    .line 129
    add-int/2addr v12, v14

    .line 130
    iput v12, v2, Lms4;->c:I

    .line 131
    .line 132
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    check-cast v12, Lxk7;

    .line 137
    .line 138
    iget-object v14, v12, Lqg6;->a:Lfh6;

    .line 139
    .line 140
    invoke-virtual {v14}, Lfh6;->c()I

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    iget-object v15, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 145
    .line 146
    iget-object v8, v15, Lc00;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v8, [I

    .line 149
    .line 150
    if-eqz v8, :cond_8

    .line 151
    .line 152
    array-length v7, v8

    .line 153
    if-lt v14, v7, :cond_7

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    aget v7, v8, v14

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    :goto_5
    move v7, v13

    .line 160
    :goto_6
    if-ne v7, v13, :cond_e

    .line 161
    .line 162
    iget v7, v2, Lms4;->e:I

    .line 163
    .line 164
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g1(I)Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 169
    .line 170
    if-eqz v7, :cond_9

    .line 171
    .line 172
    add-int/lit8 v8, v8, -0x1

    .line 173
    .line 174
    move v7, v13

    .line 175
    move/from16 v16, v7

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_9
    move/from16 v16, v6

    .line 179
    .line 180
    move v7, v8

    .line 181
    move v8, v5

    .line 182
    :goto_7
    iget v5, v2, Lms4;->e:I

    .line 183
    .line 184
    const/16 v18, 0x0

    .line 185
    .line 186
    if-ne v5, v6, :cond_c

    .line 187
    .line 188
    invoke-virtual {v10}, Lgu2;->m()I

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    const v13, 0x7fffffff

    .line 193
    .line 194
    .line 195
    :goto_8
    if-eq v8, v7, :cond_b

    .line 196
    .line 197
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 198
    .line 199
    aget-object v6, v6, v8

    .line 200
    .line 201
    move/from16 v19, v8

    .line 202
    .line 203
    invoke-virtual {v6, v5}, Lp35;->i(I)I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-ge v8, v13, :cond_a

    .line 208
    .line 209
    move-object/from16 v18, v6

    .line 210
    .line 211
    move v13, v8

    .line 212
    :cond_a
    add-int v8, v19, v16

    .line 213
    .line 214
    const/4 v6, 0x1

    .line 215
    goto :goto_8

    .line 216
    :cond_b
    move-object/from16 v5, v18

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_c
    invoke-virtual {v10}, Lgu2;->i()I

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    const/high16 v6, -0x80000000

    .line 224
    .line 225
    :goto_9
    if-eq v8, v7, :cond_b

    .line 226
    .line 227
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 228
    .line 229
    aget-object v13, v13, v8

    .line 230
    .line 231
    move/from16 v19, v7

    .line 232
    .line 233
    invoke-virtual {v13, v5}, Lp35;->k(I)I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-le v7, v6, :cond_d

    .line 238
    .line 239
    move v6, v7

    .line 240
    move-object/from16 v18, v13

    .line 241
    .line 242
    :cond_d
    add-int v8, v8, v16

    .line 243
    .line 244
    move/from16 v7, v19

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :goto_a
    invoke-virtual {v15, v14}, Lc00;->f(I)V

    .line 248
    .line 249
    .line 250
    iget-object v6, v15, Lc00;->b:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v6, [I

    .line 253
    .line 254
    iget v7, v5, Lp35;->e:I

    .line 255
    .line 256
    aput v7, v6, v14

    .line 257
    .line 258
    goto :goto_b

    .line 259
    :cond_e
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 260
    .line 261
    aget-object v5, v5, v7

    .line 262
    .line 263
    :goto_b
    iput-object v5, v12, Lxk7;->e:Lp35;

    .line 264
    .line 265
    iget v6, v2, Lms4;->e:I

    .line 266
    .line 267
    const/4 v7, 0x1

    .line 268
    if-ne v6, v7, :cond_f

    .line 269
    .line 270
    const/4 v6, -0x1

    .line 271
    const/4 v8, 0x0

    .line 272
    invoke-virtual {v0, v11, v6, v8}, Landroidx/recyclerview/widget/a;->l(Landroid/view/View;IZ)V

    .line 273
    .line 274
    .line 275
    goto :goto_c

    .line 276
    :cond_f
    const/4 v8, 0x0

    .line 277
    invoke-virtual {v0, v11, v8, v8}, Landroidx/recyclerview/widget/a;->l(Landroid/view/View;IZ)V

    .line 278
    .line 279
    .line 280
    :goto_c
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 281
    .line 282
    if-ne v6, v7, :cond_10

    .line 283
    .line 284
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 285
    .line 286
    iget v14, v0, Landroidx/recyclerview/widget/a;->t:I

    .line 287
    .line 288
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 289
    .line 290
    invoke-static {v8, v13, v14, v8, v15}, Landroidx/recyclerview/widget/a;->H(ZIIII)I

    .line 291
    .line 292
    .line 293
    move-result v13

    .line 294
    iget v8, v0, Landroidx/recyclerview/widget/a;->G:I

    .line 295
    .line 296
    iget v14, v0, Landroidx/recyclerview/widget/a;->x:I

    .line 297
    .line 298
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 299
    .line 300
    .line 301
    move-result v15

    .line 302
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 303
    .line 304
    .line 305
    move-result v16

    .line 306
    add-int v15, v16, v15

    .line 307
    .line 308
    iget v1, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 309
    .line 310
    invoke-static {v7, v8, v14, v15, v1}, Landroidx/recyclerview/widget/a;->H(ZIIII)I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-virtual {v0, v11, v13, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e1(Landroid/view/View;II)V

    .line 315
    .line 316
    .line 317
    goto :goto_d

    .line 318
    :cond_10
    iget v1, v0, Landroidx/recyclerview/widget/a;->y:I

    .line 319
    .line 320
    iget v8, v0, Landroidx/recyclerview/widget/a;->t:I

    .line 321
    .line 322
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 323
    .line 324
    .line 325
    move-result v13

    .line 326
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 327
    .line 328
    .line 329
    move-result v14

    .line 330
    add-int/2addr v14, v13

    .line 331
    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 332
    .line 333
    invoke-static {v7, v1, v8, v14, v13}, Landroidx/recyclerview/widget/a;->H(ZIIII)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 338
    .line 339
    iget v13, v0, Landroidx/recyclerview/widget/a;->x:I

    .line 340
    .line 341
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 342
    .line 343
    const/4 v15, 0x0

    .line 344
    invoke-static {v15, v8, v13, v15, v14}, Landroidx/recyclerview/widget/a;->H(ZIIII)I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    invoke-virtual {v0, v11, v1, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->e1(Landroid/view/View;II)V

    .line 349
    .line 350
    .line 351
    :goto_d
    iget v1, v2, Lms4;->e:I

    .line 352
    .line 353
    if-ne v1, v7, :cond_11

    .line 354
    .line 355
    invoke-virtual {v5, v9}, Lp35;->i(I)I

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    invoke-virtual {v10, v11}, Lgu2;->e(Landroid/view/View;)I

    .line 360
    .line 361
    .line 362
    move-result v8

    .line 363
    add-int/2addr v8, v1

    .line 364
    goto :goto_e

    .line 365
    :cond_11
    invoke-virtual {v5, v9}, Lp35;->k(I)I

    .line 366
    .line 367
    .line 368
    move-result v8

    .line 369
    invoke-virtual {v10, v11}, Lgu2;->e(Landroid/view/View;)I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    sub-int v1, v8, v1

    .line 374
    .line 375
    :goto_e
    iget v13, v2, Lms4;->e:I

    .line 376
    .line 377
    iget-object v12, v12, Lxk7;->e:Lp35;

    .line 378
    .line 379
    if-ne v13, v7, :cond_15

    .line 380
    .line 381
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 385
    .line 386
    .line 387
    move-result-object v13

    .line 388
    check-cast v13, Lxk7;

    .line 389
    .line 390
    iput-object v12, v13, Lxk7;->e:Lp35;

    .line 391
    .line 392
    iget-object v14, v12, Lp35;->f:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v14, Ljava/util/ArrayList;

    .line 395
    .line 396
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    const/high16 v15, -0x80000000

    .line 400
    .line 401
    iput v15, v12, Lp35;->c:I

    .line 402
    .line 403
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v14

    .line 407
    if-ne v14, v7, :cond_12

    .line 408
    .line 409
    iput v15, v12, Lp35;->b:I

    .line 410
    .line 411
    :cond_12
    iget-object v7, v13, Lqg6;->a:Lfh6;

    .line 412
    .line 413
    invoke-virtual {v7}, Lfh6;->i()Z

    .line 414
    .line 415
    .line 416
    move-result v7

    .line 417
    if-nez v7, :cond_13

    .line 418
    .line 419
    iget-object v7, v13, Lqg6;->a:Lfh6;

    .line 420
    .line 421
    invoke-virtual {v7}, Lfh6;->l()Z

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    if-eqz v7, :cond_14

    .line 426
    .line 427
    :cond_13
    iget v7, v12, Lp35;->d:I

    .line 428
    .line 429
    iget-object v13, v12, Lp35;->g:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 432
    .line 433
    iget-object v13, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 434
    .line 435
    invoke-virtual {v13, v11}, Lgu2;->e(Landroid/view/View;)I

    .line 436
    .line 437
    .line 438
    move-result v13

    .line 439
    add-int/2addr v13, v7

    .line 440
    iput v13, v12, Lp35;->d:I

    .line 441
    .line 442
    :cond_14
    const/high16 v15, -0x80000000

    .line 443
    .line 444
    goto :goto_f

    .line 445
    :cond_15
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    check-cast v7, Lxk7;

    .line 453
    .line 454
    iput-object v12, v7, Lxk7;->e:Lp35;

    .line 455
    .line 456
    iget-object v13, v12, Lp35;->f:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v13, Ljava/util/ArrayList;

    .line 459
    .line 460
    const/4 v15, 0x0

    .line 461
    invoke-virtual {v13, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    const/high16 v15, -0x80000000

    .line 465
    .line 466
    iput v15, v12, Lp35;->b:I

    .line 467
    .line 468
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 469
    .line 470
    .line 471
    move-result v13

    .line 472
    const/4 v14, 0x1

    .line 473
    if-ne v13, v14, :cond_16

    .line 474
    .line 475
    iput v15, v12, Lp35;->c:I

    .line 476
    .line 477
    :cond_16
    iget-object v13, v7, Lqg6;->a:Lfh6;

    .line 478
    .line 479
    invoke-virtual {v13}, Lfh6;->i()Z

    .line 480
    .line 481
    .line 482
    move-result v13

    .line 483
    if-nez v13, :cond_17

    .line 484
    .line 485
    iget-object v7, v7, Lqg6;->a:Lfh6;

    .line 486
    .line 487
    invoke-virtual {v7}, Lfh6;->l()Z

    .line 488
    .line 489
    .line 490
    move-result v7

    .line 491
    if-eqz v7, :cond_18

    .line 492
    .line 493
    :cond_17
    iget v7, v12, Lp35;->d:I

    .line 494
    .line 495
    iget-object v13, v12, Lp35;->g:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 498
    .line 499
    iget-object v13, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 500
    .line 501
    invoke-virtual {v13, v11}, Lgu2;->e(Landroid/view/View;)I

    .line 502
    .line 503
    .line 504
    move-result v13

    .line 505
    add-int/2addr v13, v7

    .line 506
    iput v13, v12, Lp35;->d:I

    .line 507
    .line 508
    :cond_18
    :goto_f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 509
    .line 510
    .line 511
    move-result v7

    .line 512
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lgu2;

    .line 513
    .line 514
    if-eqz v7, :cond_19

    .line 515
    .line 516
    const/4 v14, 0x1

    .line 517
    if-ne v6, v14, :cond_19

    .line 518
    .line 519
    invoke-virtual {v12}, Lgu2;->i()I

    .line 520
    .line 521
    .line 522
    move-result v7

    .line 523
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 524
    .line 525
    sub-int/2addr v13, v14

    .line 526
    iget v14, v5, Lp35;->e:I

    .line 527
    .line 528
    sub-int/2addr v13, v14

    .line 529
    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 530
    .line 531
    mul-int/2addr v13, v14

    .line 532
    sub-int/2addr v7, v13

    .line 533
    invoke-virtual {v12, v11}, Lgu2;->e(Landroid/view/View;)I

    .line 534
    .line 535
    .line 536
    move-result v12

    .line 537
    sub-int v12, v7, v12

    .line 538
    .line 539
    :goto_10
    const/4 v14, 0x1

    .line 540
    goto :goto_11

    .line 541
    :cond_19
    iget v7, v5, Lp35;->e:I

    .line 542
    .line 543
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 544
    .line 545
    mul-int/2addr v7, v13

    .line 546
    invoke-virtual {v12}, Lgu2;->m()I

    .line 547
    .line 548
    .line 549
    move-result v13

    .line 550
    add-int/2addr v7, v13

    .line 551
    invoke-virtual {v12, v11}, Lgu2;->e(Landroid/view/View;)I

    .line 552
    .line 553
    .line 554
    move-result v12

    .line 555
    add-int/2addr v12, v7

    .line 556
    move v14, v12

    .line 557
    move v12, v7

    .line 558
    move v7, v14

    .line 559
    goto :goto_10

    .line 560
    :goto_11
    if-ne v6, v14, :cond_1a

    .line 561
    .line 562
    invoke-static {v11, v12, v1, v7, v8}, Landroidx/recyclerview/widget/a;->Y(Landroid/view/View;IIII)V

    .line 563
    .line 564
    .line 565
    goto :goto_12

    .line 566
    :cond_1a
    invoke-static {v11, v1, v12, v8, v7}, Landroidx/recyclerview/widget/a;->Y(Landroid/view/View;IIII)V

    .line 567
    .line 568
    .line 569
    :goto_12
    iget v1, v3, Lms4;->e:I

    .line 570
    .line 571
    invoke-virtual {v0, v5, v1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q1(Lp35;II)V

    .line 572
    .line 573
    .line 574
    move-object/from16 v1, p1

    .line 575
    .line 576
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i1(Lvg6;Lms4;)V

    .line 577
    .line 578
    .line 579
    iget-boolean v6, v3, Lms4;->h:Z

    .line 580
    .line 581
    if-eqz v6, :cond_1b

    .line 582
    .line 583
    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    .line 584
    .line 585
    .line 586
    move-result v6

    .line 587
    if-eqz v6, :cond_1b

    .line 588
    .line 589
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q:Ljava/util/BitSet;

    .line 590
    .line 591
    iget v5, v5, Lp35;->e:I

    .line 592
    .line 593
    const/4 v8, 0x0

    .line 594
    invoke-virtual {v6, v5, v8}, Ljava/util/BitSet;->set(IZ)V

    .line 595
    .line 596
    .line 597
    :cond_1b
    move v6, v14

    .line 598
    move v11, v6

    .line 599
    const/4 v5, 0x0

    .line 600
    goto/16 :goto_4

    .line 601
    .line 602
    :cond_1c
    if-nez v11, :cond_1d

    .line 603
    .line 604
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i1(Lvg6;Lms4;)V

    .line 605
    .line 606
    .line 607
    :cond_1d
    iget v1, v3, Lms4;->e:I

    .line 608
    .line 609
    const/4 v6, -0x1

    .line 610
    if-ne v1, v6, :cond_1e

    .line 611
    .line 612
    invoke-virtual {v10}, Lgu2;->m()I

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(I)I

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    invoke-virtual {v10}, Lgu2;->m()I

    .line 621
    .line 622
    .line 623
    move-result v1

    .line 624
    sub-int/2addr v1, v0

    .line 625
    goto :goto_13

    .line 626
    :cond_1e
    invoke-virtual {v10}, Lgu2;->i()I

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z0(I)I

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    invoke-virtual {v10}, Lgu2;->i()I

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    sub-int v1, v0, v1

    .line 639
    .line 640
    :goto_13
    if-lez v1, :cond_1f

    .line 641
    .line 642
    iget v0, v2, Lms4;->b:I

    .line 643
    .line 644
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    return v0

    .line 649
    :cond_1f
    const/16 v17, 0x0

    .line 650
    .line 651
    return v17
.end method

.method public final T(Lvg6;Lbh6;)I
    .locals 0

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 6
    .line 7
    invoke-virtual {p2}, Lbh6;->b()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public final T0(Z)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgu2;->m()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lgu2;->i()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    add-int/lit8 v3, v3, -0x1

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ltz v3, :cond_4

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v0, v5}, Lgu2;->g(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-virtual {v0, v5}, Lgu2;->d(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-le v7, v1, :cond_3

    .line 33
    .line 34
    if-lt v6, v2, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    if-le v7, v2, :cond_2

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-nez v4, :cond_3

    .line 43
    .line 44
    move-object v4, v5

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_1
    return-object v5

    .line 47
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    return-object v4
.end method

.method public final U0(Z)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgu2;->m()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lgu2;->i()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_0
    if-ge v5, v3, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v0, v6}, Lgu2;->g(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual {v0, v6}, Lgu2;->d(Landroid/view/View;)I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-le v8, v1, :cond_3

    .line 32
    .line 33
    if-lt v7, v2, :cond_0

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_0
    if-ge v7, v1, :cond_2

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    if-nez v4, :cond_3

    .line 42
    .line 43
    move-object v4, v6

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    :goto_1
    return-object v6

    .line 46
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    return-object v4
.end method

.method public final V()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U:I

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final V0(Lvg6;Lbh6;Z)V
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z0(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 11
    .line 12
    invoke-virtual {v0}, Lgu2;->i()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    neg-int v1, v0

    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m1(ILvg6;Lbh6;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    neg-int p1, p1

    .line 25
    sub-int/2addr v0, p1

    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lgu2;->r(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final W()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 2
    .line 3
    return p0
.end method

.method public final W0(Lvg6;Lbh6;Z)V
    .locals 2

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a1(I)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lgu2;->m()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int/2addr v1, v0

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m1(ILvg6;Lbh6;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-int/2addr v1, p1

    .line 25
    if-eqz p3, :cond_1

    .line 26
    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 30
    .line 31
    neg-int p1, v1

    .line 32
    invoke-virtual {p0, p1}, Lgu2;->r(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public final X0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final Y0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final Z(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/a;->Z(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Lp35;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Lp35;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Lp35;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Lp35;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final Z0(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lp35;->i(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lp35;->i(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-le v2, v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 10
    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    :cond_0
    move v1, v2

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ge p1, v0, :cond_2

    .line 20
    .line 21
    move p1, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    :cond_3
    :goto_1
    new-instance p1, Landroid/graphics/PointF;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 31
    .line 32
    .line 33
    if-nez v1, :cond_4

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    if-nez p0, :cond_5

    .line 41
    .line 42
    int-to-float p0, v1

    .line 43
    iput p0, p1, Landroid/graphics/PointF;->x:F

    .line 44
    .line 45
    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_5
    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 49
    .line 50
    int-to-float p0, v1

    .line 51
    iput p0, p1, Landroid/graphics/PointF;->y:F

    .line 52
    .line 53
    return-object p1
.end method

.method public final a0(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/a;->a0(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 10
    .line 11
    aget-object v1, v1, v0

    .line 12
    .line 13
    iget v2, v1, Lp35;->b:I

    .line 14
    .line 15
    const/high16 v3, -0x80000000

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    add-int/2addr v2, p1

    .line 20
    iput v2, v1, Lp35;->b:I

    .line 21
    .line 22
    :cond_0
    iget v2, v1, Lp35;->c:I

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    add-int/2addr v2, p1

    .line 27
    iput v2, v1, Lp35;->c:I

    .line 28
    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
.end method

.method public final a1(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lp35;->k(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 12
    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lp35;->k(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v2, v0, :cond_0

    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public final b0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc00;->a()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 12
    .line 13
    aget-object v1, v1, v0

    .line 14
    .line 15
    invoke-virtual {v1}, Lp35;->b()V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public final b1(III)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    const/16 v1, 0x8

    .line 15
    .line 16
    if-ne p3, v1, :cond_2

    .line 17
    .line 18
    if-ge p1, p2, :cond_1

    .line 19
    .line 20
    add-int/lit8 v2, p2, 0x1

    .line 21
    .line 22
    :goto_1
    move v3, p1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 25
    .line 26
    move v3, p2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    add-int v2, p1, p2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 32
    .line 33
    iget-object v5, v4, Lc00;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v5, [I

    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    goto/16 :goto_8

    .line 41
    .line 42
    :cond_3
    array-length v5, v5

    .line 43
    if-lt v3, v5, :cond_4

    .line 44
    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_4
    iget-object v5, v4, Lc00;->c:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v5, Ljava/util/ArrayList;

    .line 50
    .line 51
    const/4 v7, -0x1

    .line 52
    if-nez v5, :cond_6

    .line 53
    .line 54
    :cond_5
    move v5, v7

    .line 55
    goto :goto_7

    .line 56
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    sub-int/2addr v5, v6

    .line 61
    :goto_3
    if-ltz v5, :cond_8

    .line 62
    .line 63
    iget-object v8, v4, Lc00;->c:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v8, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, Lyk7;

    .line 72
    .line 73
    iget v9, v8, Lyk7;->a:I

    .line 74
    .line 75
    if-ne v9, v3, :cond_7

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_8
    const/4 v8, 0x0

    .line 82
    :goto_4
    if-eqz v8, :cond_9

    .line 83
    .line 84
    iget-object v5, v4, Lc00;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v5, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-interface {v5, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_9
    iget-object v5, v4, Lc00;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v5, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    const/4 v8, 0x0

    .line 100
    :goto_5
    if-ge v8, v5, :cond_b

    .line 101
    .line 102
    iget-object v9, v4, Lc00;->c:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v9, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    check-cast v9, Lyk7;

    .line 111
    .line 112
    iget v9, v9, Lyk7;->a:I

    .line 113
    .line 114
    if-lt v9, v3, :cond_a

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_b
    move v8, v7

    .line 121
    :goto_6
    if-eq v8, v7, :cond_5

    .line 122
    .line 123
    iget-object v5, v4, Lc00;->c:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v5, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Lyk7;

    .line 132
    .line 133
    iget-object v9, v4, Lc00;->c:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v9, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    iget v5, v5, Lyk7;->a:I

    .line 141
    .line 142
    :goto_7
    iget-object v8, v4, Lc00;->b:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v8, [I

    .line 145
    .line 146
    if-ne v5, v7, :cond_c

    .line 147
    .line 148
    array-length v5, v8

    .line 149
    invoke-static {v8, v3, v5, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 150
    .line 151
    .line 152
    iget-object v5, v4, Lc00;->b:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v5, [I

    .line 155
    .line 156
    array-length v5, v5

    .line 157
    goto :goto_8

    .line 158
    :cond_c
    add-int/2addr v5, v6

    .line 159
    array-length v8, v8

    .line 160
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    iget-object v8, v4, Lc00;->b:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v8, [I

    .line 167
    .line 168
    invoke-static {v8, v3, v5, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 169
    .line 170
    .line 171
    :goto_8
    if-eq p3, v6, :cond_f

    .line 172
    .line 173
    const/4 v5, 0x2

    .line 174
    if-eq p3, v5, :cond_e

    .line 175
    .line 176
    if-eq p3, v1, :cond_d

    .line 177
    .line 178
    goto :goto_9

    .line 179
    :cond_d
    invoke-virtual {v4, p1, v6}, Lc00;->m(II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, p2, v6}, Lc00;->l(II)V

    .line 183
    .line 184
    .line 185
    goto :goto_9

    .line 186
    :cond_e
    invoke-virtual {v4, p1, p2}, Lc00;->m(II)V

    .line 187
    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_f
    invoke-virtual {v4, p1, p2}, Lc00;->l(II)V

    .line 191
    .line 192
    .line 193
    :goto_9
    if-gt v2, v0, :cond_10

    .line 194
    .line 195
    goto :goto_b

    .line 196
    :cond_10
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 197
    .line 198
    if-eqz p1, :cond_11

    .line 199
    .line 200
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    goto :goto_a

    .line 205
    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    :goto_a
    if-gt v3, p1, :cond_12

    .line 210
    .line 211
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 212
    .line 213
    .line 214
    :cond_12
    :goto_b
    return-void
.end method

.method public final c1()Landroid/view/View;
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    new-instance v2, Ljava/util/BitSet;

    .line 8
    .line 9
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 19
    .line 20
    .line 21
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 22
    .line 23
    const/4 v6, -0x1

    .line 24
    if-ne v3, v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    move v3, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v3, v6

    .line 35
    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    move v0, v6

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v4

    .line 42
    :goto_1
    if-ge v1, v0, :cond_2

    .line 43
    .line 44
    move v6, v5

    .line 45
    :cond_2
    if-eq v1, v0, :cond_d

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    check-cast v8, Lxk7;

    .line 56
    .line 57
    iget-object v9, v8, Lxk7;->e:Lp35;

    .line 58
    .line 59
    iget v9, v9, Lp35;->e:I

    .line 60
    .line 61
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 66
    .line 67
    if-eqz v9, :cond_7

    .line 68
    .line 69
    iget-object v9, v8, Lxk7;->e:Lp35;

    .line 70
    .line 71
    iget-boolean v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 72
    .line 73
    const/high16 v12, -0x80000000

    .line 74
    .line 75
    if-eqz v11, :cond_4

    .line 76
    .line 77
    iget v11, v9, Lp35;->c:I

    .line 78
    .line 79
    if-eq v11, v12, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    invoke-virtual {v9}, Lp35;->a()V

    .line 83
    .line 84
    .line 85
    iget v11, v9, Lp35;->c:I

    .line 86
    .line 87
    :goto_2
    invoke-virtual {v10}, Lgu2;->i()I

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    if-ge v11, v12, :cond_6

    .line 92
    .line 93
    iget-object p0, v9, Lp35;->f:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-static {p0, v5}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Landroid/view/View;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    check-cast p0, Lxk7;

    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    return-object v7

    .line 113
    :cond_4
    iget v11, v9, Lp35;->b:I

    .line 114
    .line 115
    iget-object v13, v9, Lp35;->f:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v13, Ljava/util/ArrayList;

    .line 118
    .line 119
    if-eq v11, v12, :cond_5

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_5
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    check-cast v11, Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    check-cast v12, Lxk7;

    .line 133
    .line 134
    iget-object v14, v9, Lp35;->g:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 137
    .line 138
    iget-object v14, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 139
    .line 140
    invoke-virtual {v14, v11}, Lgu2;->g(Landroid/view/View;)I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    iput v11, v9, Lp35;->b:I

    .line 145
    .line 146
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget v11, v9, Lp35;->b:I

    .line 150
    .line 151
    :goto_3
    invoke-virtual {v10}, Lgu2;->m()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-le v11, v9, :cond_6

    .line 156
    .line 157
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    check-cast p0, Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Lxk7;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    return-object v7

    .line 173
    :cond_6
    iget-object v9, v8, Lxk7;->e:Lp35;

    .line 174
    .line 175
    iget v9, v9, Lp35;->e:I

    .line 176
    .line 177
    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 178
    .line 179
    .line 180
    :cond_7
    add-int/2addr v1, v6

    .line 181
    if-eq v1, v0, :cond_2

    .line 182
    .line 183
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    iget-boolean v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 188
    .line 189
    if-eqz v11, :cond_9

    .line 190
    .line 191
    invoke-virtual {v10, v7}, Lgu2;->d(Landroid/view/View;)I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    invoke-virtual {v10, v9}, Lgu2;->d(Landroid/view/View;)I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-ge v11, v10, :cond_8

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_8
    if-ne v11, v10, :cond_2

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_9
    invoke-virtual {v10, v7}, Lgu2;->g(Landroid/view/View;)I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {v10, v9}, Lgu2;->g(Landroid/view/View;)I

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    if-le v11, v10, :cond_a

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_a
    if-ne v11, v10, :cond_2

    .line 217
    .line 218
    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    check-cast v9, Lxk7;

    .line 223
    .line 224
    iget-object v8, v8, Lxk7;->e:Lp35;

    .line 225
    .line 226
    iget v8, v8, Lp35;->e:I

    .line 227
    .line 228
    iget-object v9, v9, Lxk7;->e:Lp35;

    .line 229
    .line 230
    iget v9, v9, Lp35;->e:I

    .line 231
    .line 232
    sub-int/2addr v8, v9

    .line 233
    if-gez v8, :cond_b

    .line 234
    .line 235
    move v8, v5

    .line 236
    goto :goto_5

    .line 237
    :cond_b
    move v8, v4

    .line 238
    :goto_5
    if-gez v3, :cond_c

    .line 239
    .line 240
    move v9, v5

    .line 241
    goto :goto_6

    .line 242
    :cond_c
    move v9, v4

    .line 243
    :goto_6
    if-eq v8, v9, :cond_2

    .line 244
    .line 245
    :goto_7
    return-object v7

    .line 246
    :cond_d
    const/4 p0, 0x0

    .line 247
    return-object p0
.end method

.method public final d0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c0:Laq2;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 16
    .line 17
    aget-object v1, v1, v0

    .line 18
    .line 19
    invoke-virtual {v1}, Lp35;->b()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final d1()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final e0(Landroid/view/View;ILvg6;Lbh6;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_10

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->C(Landroid/view/View;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 23
    .line 24
    iget-object v0, v0, Lj61;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    :goto_0
    move-object p1, v1

    .line 33
    :cond_3
    if-nez p1, :cond_4

    .line 34
    .line 35
    goto/16 :goto_10

    .line 36
    .line 37
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l1()V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 41
    .line 42
    const/high16 v2, -0x80000000

    .line 43
    .line 44
    const/4 v3, -0x1

    .line 45
    const/4 v4, 0x1

    .line 46
    if-eq p2, v4, :cond_e

    .line 47
    .line 48
    const/4 v5, 0x2

    .line 49
    if-eq p2, v5, :cond_c

    .line 50
    .line 51
    const/16 v5, 0x11

    .line 52
    .line 53
    if-eq p2, v5, :cond_b

    .line 54
    .line 55
    const/16 v5, 0x21

    .line 56
    .line 57
    if-eq p2, v5, :cond_9

    .line 58
    .line 59
    const/16 v5, 0x42

    .line 60
    .line 61
    if-eq p2, v5, :cond_8

    .line 62
    .line 63
    const/16 v5, 0x82

    .line 64
    .line 65
    if-eq p2, v5, :cond_6

    .line 66
    .line 67
    :cond_5
    move p2, v2

    .line 68
    goto :goto_4

    .line 69
    :cond_6
    if-ne v0, v4, :cond_5

    .line 70
    .line 71
    :cond_7
    :goto_1
    move p2, v4

    .line 72
    goto :goto_4

    .line 73
    :cond_8
    if-nez v0, :cond_5

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_9
    if-ne v0, v4, :cond_5

    .line 77
    .line 78
    :cond_a
    :goto_2
    move p2, v3

    .line 79
    goto :goto_4

    .line 80
    :cond_b
    if-nez v0, :cond_5

    .line 81
    .line 82
    :goto_3
    goto :goto_2

    .line 83
    :cond_c
    if-ne v0, v4, :cond_d

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_7

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_e
    if-ne v0, v4, :cond_f

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_a

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :goto_4
    if-ne p2, v2, :cond_10

    .line 104
    .line 105
    goto/16 :goto_10

    .line 106
    .line 107
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lxk7;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v0, v0, Lxk7;->e:Lp35;

    .line 117
    .line 118
    if-ne p2, v4, :cond_11

    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    goto :goto_5

    .line 125
    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    :goto_5
    invoke-virtual {p0, v2, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p1(ILbh6;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n1(I)V

    .line 133
    .line 134
    .line 135
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 136
    .line 137
    iget v6, v5, Lms4;->d:I

    .line 138
    .line 139
    add-int/2addr v6, v2

    .line 140
    iput v6, v5, Lms4;->c:I

    .line 141
    .line 142
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 143
    .line 144
    invoke-virtual {v6}, Lgu2;->n()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    int-to-float v6, v6

    .line 149
    const v7, 0x3eaaaaab

    .line 150
    .line 151
    .line 152
    mul-float/2addr v6, v7

    .line 153
    float-to-int v6, v6

    .line 154
    iput v6, v5, Lms4;->b:I

    .line 155
    .line 156
    iput-boolean v4, v5, Lms4;->h:Z

    .line 157
    .line 158
    const/4 v6, 0x0

    .line 159
    iput-boolean v6, v5, Lms4;->a:Z

    .line 160
    .line 161
    invoke-virtual {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(Lvg6;Lms4;Lbh6;)I

    .line 162
    .line 163
    .line 164
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 165
    .line 166
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V:Z

    .line 167
    .line 168
    invoke-virtual {v0, v2, p2}, Lp35;->j(II)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    if-eqz p3, :cond_12

    .line 173
    .line 174
    if-eq p3, p1, :cond_12

    .line 175
    .line 176
    return-object p3

    .line 177
    :cond_12
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g1(I)Z

    .line 178
    .line 179
    .line 180
    move-result p3

    .line 181
    if-eqz p3, :cond_14

    .line 182
    .line 183
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 184
    .line 185
    sub-int/2addr p3, v4

    .line 186
    :goto_6
    if-ltz p3, :cond_16

    .line 187
    .line 188
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 189
    .line 190
    aget-object p4, p4, p3

    .line 191
    .line 192
    invoke-virtual {p4, v2, p2}, Lp35;->j(II)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object p4

    .line 196
    if-eqz p4, :cond_13

    .line 197
    .line 198
    if-eq p4, p1, :cond_13

    .line 199
    .line 200
    return-object p4

    .line 201
    :cond_13
    add-int/lit8 p3, p3, -0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_14
    move p3, v6

    .line 205
    :goto_7
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 206
    .line 207
    if-ge p3, p4, :cond_16

    .line 208
    .line 209
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 210
    .line 211
    aget-object p4, p4, p3

    .line 212
    .line 213
    invoke-virtual {p4, v2, p2}, Lp35;->j(II)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object p4

    .line 217
    if-eqz p4, :cond_15

    .line 218
    .line 219
    if-eq p4, p1, :cond_15

    .line 220
    .line 221
    return-object p4

    .line 222
    :cond_15
    add-int/lit8 p3, p3, 0x1

    .line 223
    .line 224
    goto :goto_7

    .line 225
    :cond_16
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 226
    .line 227
    xor-int/2addr p3, v4

    .line 228
    if-ne p2, v3, :cond_17

    .line 229
    .line 230
    move p4, v4

    .line 231
    goto :goto_8

    .line 232
    :cond_17
    move p4, v6

    .line 233
    :goto_8
    if-ne p3, p4, :cond_18

    .line 234
    .line 235
    move p3, v4

    .line 236
    goto :goto_9

    .line 237
    :cond_18
    move p3, v6

    .line 238
    :goto_9
    if-eqz p3, :cond_19

    .line 239
    .line 240
    invoke-virtual {v0}, Lp35;->e()I

    .line 241
    .line 242
    .line 243
    move-result p4

    .line 244
    goto :goto_a

    .line 245
    :cond_19
    invoke-virtual {v0}, Lp35;->f()I

    .line 246
    .line 247
    .line 248
    move-result p4

    .line 249
    :goto_a
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/a;->B(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object p4

    .line 253
    if-eqz p4, :cond_1a

    .line 254
    .line 255
    if-eq p4, p1, :cond_1a

    .line 256
    .line 257
    return-object p4

    .line 258
    :cond_1a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g1(I)Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-eqz p2, :cond_1e

    .line 263
    .line 264
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 265
    .line 266
    sub-int/2addr p2, v4

    .line 267
    :goto_b
    if-ltz p2, :cond_21

    .line 268
    .line 269
    iget p4, v0, Lp35;->e:I

    .line 270
    .line 271
    if-ne p2, p4, :cond_1b

    .line 272
    .line 273
    goto :goto_d

    .line 274
    :cond_1b
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 275
    .line 276
    if-eqz p3, :cond_1c

    .line 277
    .line 278
    aget-object p4, p4, p2

    .line 279
    .line 280
    invoke-virtual {p4}, Lp35;->e()I

    .line 281
    .line 282
    .line 283
    move-result p4

    .line 284
    goto :goto_c

    .line 285
    :cond_1c
    aget-object p4, p4, p2

    .line 286
    .line 287
    invoke-virtual {p4}, Lp35;->f()I

    .line 288
    .line 289
    .line 290
    move-result p4

    .line 291
    :goto_c
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/a;->B(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object p4

    .line 295
    if-eqz p4, :cond_1d

    .line 296
    .line 297
    if-eq p4, p1, :cond_1d

    .line 298
    .line 299
    return-object p4

    .line 300
    :cond_1d
    :goto_d
    add-int/lit8 p2, p2, -0x1

    .line 301
    .line 302
    goto :goto_b

    .line 303
    :cond_1e
    :goto_e
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 304
    .line 305
    if-ge v6, p2, :cond_21

    .line 306
    .line 307
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 308
    .line 309
    if-eqz p3, :cond_1f

    .line 310
    .line 311
    aget-object p2, p2, v6

    .line 312
    .line 313
    invoke-virtual {p2}, Lp35;->e()I

    .line 314
    .line 315
    .line 316
    move-result p2

    .line 317
    goto :goto_f

    .line 318
    :cond_1f
    aget-object p2, p2, v6

    .line 319
    .line 320
    invoke-virtual {p2}, Lp35;->f()I

    .line 321
    .line 322
    .line 323
    move-result p2

    .line 324
    :goto_f
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/a;->B(I)Landroid/view/View;

    .line 325
    .line 326
    .line 327
    move-result-object p2

    .line 328
    if-eqz p2, :cond_20

    .line 329
    .line 330
    if-eq p2, p1, :cond_20

    .line 331
    .line 332
    return-object p2

    .line 333
    :cond_20
    add-int/lit8 v6, v6, 0x1

    .line 334
    .line 335
    goto :goto_e

    .line 336
    :cond_21
    :goto_10
    return-object v1
.end method

.method public final e1(Landroid/view/View;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/a;->n(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lxk7;

    .line 11
    .line 12
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    .line 19
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    add-int/2addr v3, v4

    .line 22
    invoke-static {p2, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r1(III)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    .line 28
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    add-int/2addr v2, v3

    .line 31
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 32
    .line 33
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    add-int/2addr v3, v0

    .line 36
    invoke-static {p3, v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r1(III)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/recyclerview/widget/a;->K0(Landroid/view/View;IILqg6;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public final f0(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/a;->f0(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {p0}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-ge v0, p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final f1(Lvg6;Lbh6;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    iget-object v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z:Lwk7;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 15
    .line 16
    if-eq v3, v4, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v2}, Lbh6;->b()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/a;->w0(Lvg6;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Lwk7;->a()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-boolean v3, v5, Lwk7;->e:Z

    .line 32
    .line 33
    iget-object v6, v5, Lwk7;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x1

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 40
    .line 41
    if-ne v3, v4, :cond_3

    .line 42
    .line 43
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v3, v7

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    move v3, v8

    .line 51
    :goto_1
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 52
    .line 53
    const/high16 v10, -0x80000000

    .line 54
    .line 55
    if-eqz v3, :cond_25

    .line 56
    .line 57
    invoke-virtual {v5}, Lwk7;->a()V

    .line 58
    .line 59
    .line 60
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 61
    .line 62
    iget-object v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 63
    .line 64
    if-eqz v11, :cond_a

    .line 65
    .line 66
    iget v13, v11, Lzk7;->c:I

    .line 67
    .line 68
    const/4 v14, 0x0

    .line 69
    if-lez v13, :cond_7

    .line 70
    .line 71
    iget v15, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 72
    .line 73
    if-ne v13, v15, :cond_6

    .line 74
    .line 75
    move v11, v7

    .line 76
    :goto_2
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 77
    .line 78
    if-ge v11, v13, :cond_7

    .line 79
    .line 80
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 81
    .line 82
    aget-object v13, v13, v11

    .line 83
    .line 84
    invoke-virtual {v13}, Lp35;->b()V

    .line 85
    .line 86
    .line 87
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 88
    .line 89
    iget-object v15, v13, Lzk7;->d:[I

    .line 90
    .line 91
    aget v15, v15, v11

    .line 92
    .line 93
    if-eq v15, v10, :cond_5

    .line 94
    .line 95
    iget-boolean v13, v13, Lzk7;->p:Z

    .line 96
    .line 97
    if-eqz v13, :cond_4

    .line 98
    .line 99
    invoke-virtual {v12}, Lgu2;->i()I

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    :goto_3
    add-int/2addr v15, v13

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    invoke-virtual {v12}, Lgu2;->m()I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    :goto_4
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 111
    .line 112
    aget-object v13, v13, v11

    .line 113
    .line 114
    iput v15, v13, Lp35;->b:I

    .line 115
    .line 116
    iput v15, v13, Lp35;->c:I

    .line 117
    .line 118
    add-int/lit8 v11, v11, 0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    iput-object v14, v11, Lzk7;->d:[I

    .line 122
    .line 123
    iput v7, v11, Lzk7;->c:I

    .line 124
    .line 125
    iput v7, v11, Lzk7;->e:I

    .line 126
    .line 127
    iput-object v14, v11, Lzk7;->f:[I

    .line 128
    .line 129
    iput-object v14, v11, Lzk7;->k:Ljava/util/ArrayList;

    .line 130
    .line 131
    iget v13, v11, Lzk7;->b:I

    .line 132
    .line 133
    iput v13, v11, Lzk7;->a:I

    .line 134
    .line 135
    :cond_7
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 136
    .line 137
    iget-boolean v13, v11, Lzk7;->q:Z

    .line 138
    .line 139
    iput-boolean v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W:Z

    .line 140
    .line 141
    iget-boolean v11, v11, Lzk7;->n:Z

    .line 142
    .line 143
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 147
    .line 148
    if-eqz v13, :cond_8

    .line 149
    .line 150
    iget-boolean v14, v13, Lzk7;->n:Z

    .line 151
    .line 152
    if-eq v14, v11, :cond_8

    .line 153
    .line 154
    iput-boolean v11, v13, Lzk7;->n:Z

    .line 155
    .line 156
    :cond_8
    iput-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l1()V

    .line 162
    .line 163
    .line 164
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 165
    .line 166
    iget v13, v11, Lzk7;->a:I

    .line 167
    .line 168
    if-eq v13, v4, :cond_9

    .line 169
    .line 170
    iput v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 171
    .line 172
    iget-boolean v13, v11, Lzk7;->p:Z

    .line 173
    .line 174
    iput-boolean v13, v5, Lwk7;->c:Z

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_9
    iget-boolean v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 178
    .line 179
    iput-boolean v13, v5, Lwk7;->c:Z

    .line 180
    .line 181
    :goto_5
    iget v13, v11, Lzk7;->e:I

    .line 182
    .line 183
    if-le v13, v8, :cond_b

    .line 184
    .line 185
    iget-object v13, v11, Lzk7;->f:[I

    .line 186
    .line 187
    iput-object v13, v9, Lc00;->b:Ljava/lang/Object;

    .line 188
    .line 189
    iget-object v11, v11, Lzk7;->k:Ljava/util/ArrayList;

    .line 190
    .line 191
    iput-object v11, v9, Lc00;->c:Ljava/lang/Object;

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l1()V

    .line 195
    .line 196
    .line 197
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 198
    .line 199
    iput-boolean v11, v5, Lwk7;->c:Z

    .line 200
    .line 201
    :cond_b
    :goto_6
    iget-boolean v11, v2, Lbh6;->g:Z

    .line 202
    .line 203
    if-nez v11, :cond_20

    .line 204
    .line 205
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 206
    .line 207
    if-ne v11, v4, :cond_c

    .line 208
    .line 209
    goto/16 :goto_10

    .line 210
    .line 211
    :cond_c
    if-ltz v11, :cond_1f

    .line 212
    .line 213
    invoke-virtual {v2}, Lbh6;->b()I

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-lt v11, v13, :cond_d

    .line 218
    .line 219
    goto/16 :goto_f

    .line 220
    .line 221
    :cond_d
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 222
    .line 223
    if-eqz v11, :cond_f

    .line 224
    .line 225
    iget v13, v11, Lzk7;->a:I

    .line 226
    .line 227
    if-eq v13, v4, :cond_f

    .line 228
    .line 229
    iget v11, v11, Lzk7;->c:I

    .line 230
    .line 231
    if-ge v11, v8, :cond_e

    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_e
    iput v10, v5, Lwk7;->b:I

    .line 235
    .line 236
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 237
    .line 238
    iput v11, v5, Lwk7;->a:I

    .line 239
    .line 240
    goto/16 :goto_14

    .line 241
    .line 242
    :cond_f
    :goto_7
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 243
    .line 244
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->B(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    if-eqz v11, :cond_17

    .line 249
    .line 250
    iget-boolean v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 251
    .line 252
    if-eqz v13, :cond_10

    .line 253
    .line 254
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()I

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    goto :goto_8

    .line 259
    :cond_10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 260
    .line 261
    .line 262
    move-result v13

    .line 263
    :goto_8
    iput v13, v5, Lwk7;->a:I

    .line 264
    .line 265
    iget v13, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 266
    .line 267
    if-eq v13, v10, :cond_12

    .line 268
    .line 269
    iget-boolean v13, v5, Lwk7;->c:Z

    .line 270
    .line 271
    if-eqz v13, :cond_11

    .line 272
    .line 273
    invoke-virtual {v12}, Lgu2;->i()I

    .line 274
    .line 275
    .line 276
    move-result v13

    .line 277
    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 278
    .line 279
    sub-int/2addr v13, v14

    .line 280
    invoke-virtual {v12, v11}, Lgu2;->d(Landroid/view/View;)I

    .line 281
    .line 282
    .line 283
    move-result v11

    .line 284
    sub-int/2addr v13, v11

    .line 285
    iput v13, v5, Lwk7;->b:I

    .line 286
    .line 287
    goto/16 :goto_14

    .line 288
    .line 289
    :cond_11
    invoke-virtual {v12}, Lgu2;->m()I

    .line 290
    .line 291
    .line 292
    move-result v13

    .line 293
    iget v14, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 294
    .line 295
    add-int/2addr v13, v14

    .line 296
    invoke-virtual {v12, v11}, Lgu2;->g(Landroid/view/View;)I

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    sub-int/2addr v13, v11

    .line 301
    iput v13, v5, Lwk7;->b:I

    .line 302
    .line 303
    goto/16 :goto_14

    .line 304
    .line 305
    :cond_12
    invoke-virtual {v12, v11}, Lgu2;->e(Landroid/view/View;)I

    .line 306
    .line 307
    .line 308
    move-result v13

    .line 309
    invoke-virtual {v12}, Lgu2;->n()I

    .line 310
    .line 311
    .line 312
    move-result v14

    .line 313
    if-le v13, v14, :cond_14

    .line 314
    .line 315
    iget-boolean v11, v5, Lwk7;->c:Z

    .line 316
    .line 317
    if-eqz v11, :cond_13

    .line 318
    .line 319
    invoke-virtual {v12}, Lgu2;->i()I

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    goto :goto_9

    .line 324
    :cond_13
    invoke-virtual {v12}, Lgu2;->m()I

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    :goto_9
    iput v11, v5, Lwk7;->b:I

    .line 329
    .line 330
    goto/16 :goto_14

    .line 331
    .line 332
    :cond_14
    invoke-virtual {v12, v11}, Lgu2;->g(Landroid/view/View;)I

    .line 333
    .line 334
    .line 335
    move-result v13

    .line 336
    invoke-virtual {v12}, Lgu2;->m()I

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    sub-int/2addr v13, v14

    .line 341
    if-gez v13, :cond_15

    .line 342
    .line 343
    neg-int v11, v13

    .line 344
    iput v11, v5, Lwk7;->b:I

    .line 345
    .line 346
    goto/16 :goto_14

    .line 347
    .line 348
    :cond_15
    invoke-virtual {v12}, Lgu2;->i()I

    .line 349
    .line 350
    .line 351
    move-result v13

    .line 352
    invoke-virtual {v12, v11}, Lgu2;->d(Landroid/view/View;)I

    .line 353
    .line 354
    .line 355
    move-result v11

    .line 356
    sub-int/2addr v13, v11

    .line 357
    if-gez v13, :cond_16

    .line 358
    .line 359
    iput v13, v5, Lwk7;->b:I

    .line 360
    .line 361
    goto/16 :goto_14

    .line 362
    .line 363
    :cond_16
    iput v10, v5, Lwk7;->b:I

    .line 364
    .line 365
    goto/16 :goto_14

    .line 366
    .line 367
    :cond_17
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 368
    .line 369
    iput v11, v5, Lwk7;->a:I

    .line 370
    .line 371
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 372
    .line 373
    if-ne v12, v10, :cond_1d

    .line 374
    .line 375
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 376
    .line 377
    .line 378
    move-result v12

    .line 379
    if-nez v12, :cond_18

    .line 380
    .line 381
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 382
    .line 383
    if-eqz v11, :cond_1a

    .line 384
    .line 385
    goto :goto_b

    .line 386
    :cond_18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 387
    .line 388
    .line 389
    move-result v12

    .line 390
    if-ge v11, v12, :cond_19

    .line 391
    .line 392
    move v11, v8

    .line 393
    goto :goto_a

    .line 394
    :cond_19
    move v11, v7

    .line 395
    :goto_a
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 396
    .line 397
    if-eq v11, v12, :cond_1b

    .line 398
    .line 399
    :cond_1a
    move v11, v7

    .line 400
    goto :goto_c

    .line 401
    :cond_1b
    :goto_b
    move v11, v8

    .line 402
    :goto_c
    iput-boolean v11, v5, Lwk7;->c:Z

    .line 403
    .line 404
    iget-object v12, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 405
    .line 406
    if-eqz v11, :cond_1c

    .line 407
    .line 408
    invoke-virtual {v12}, Lgu2;->i()I

    .line 409
    .line 410
    .line 411
    move-result v11

    .line 412
    goto :goto_d

    .line 413
    :cond_1c
    invoke-virtual {v12}, Lgu2;->m()I

    .line 414
    .line 415
    .line 416
    move-result v11

    .line 417
    :goto_d
    iput v11, v5, Lwk7;->b:I

    .line 418
    .line 419
    goto :goto_e

    .line 420
    :cond_1d
    iget-boolean v11, v5, Lwk7;->c:Z

    .line 421
    .line 422
    iget-object v13, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 423
    .line 424
    if-eqz v11, :cond_1e

    .line 425
    .line 426
    invoke-virtual {v13}, Lgu2;->i()I

    .line 427
    .line 428
    .line 429
    move-result v11

    .line 430
    sub-int/2addr v11, v12

    .line 431
    iput v11, v5, Lwk7;->b:I

    .line 432
    .line 433
    goto :goto_e

    .line 434
    :cond_1e
    invoke-virtual {v13}, Lgu2;->m()I

    .line 435
    .line 436
    .line 437
    move-result v11

    .line 438
    add-int/2addr v11, v12

    .line 439
    iput v11, v5, Lwk7;->b:I

    .line 440
    .line 441
    :goto_e
    iput-boolean v8, v5, Lwk7;->d:Z

    .line 442
    .line 443
    goto :goto_14

    .line 444
    :cond_1f
    :goto_f
    iput v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 445
    .line 446
    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 447
    .line 448
    :cond_20
    :goto_10
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V:Z

    .line 449
    .line 450
    if-eqz v11, :cond_23

    .line 451
    .line 452
    invoke-virtual {v2}, Lbh6;->b()I

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 457
    .line 458
    .line 459
    move-result v12

    .line 460
    sub-int/2addr v12, v8

    .line 461
    :goto_11
    if-ltz v12, :cond_22

    .line 462
    .line 463
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 464
    .line 465
    .line 466
    move-result-object v13

    .line 467
    invoke-static {v13}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    if-ltz v13, :cond_21

    .line 472
    .line 473
    if-ge v13, v11, :cond_21

    .line 474
    .line 475
    goto :goto_13

    .line 476
    :cond_21
    add-int/lit8 v12, v12, -0x1

    .line 477
    .line 478
    goto :goto_11

    .line 479
    :cond_22
    move v13, v7

    .line 480
    goto :goto_13

    .line 481
    :cond_23
    invoke-virtual {v2}, Lbh6;->b()I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 486
    .line 487
    .line 488
    move-result v12

    .line 489
    move v13, v7

    .line 490
    :goto_12
    if-ge v13, v12, :cond_22

    .line 491
    .line 492
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 493
    .line 494
    .line 495
    move-result-object v14

    .line 496
    invoke-static {v14}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 497
    .line 498
    .line 499
    move-result v14

    .line 500
    if-ltz v14, :cond_24

    .line 501
    .line 502
    if-ge v14, v11, :cond_24

    .line 503
    .line 504
    move v13, v14

    .line 505
    goto :goto_13

    .line 506
    :cond_24
    add-int/lit8 v13, v13, 0x1

    .line 507
    .line 508
    goto :goto_12

    .line 509
    :goto_13
    iput v13, v5, Lwk7;->a:I

    .line 510
    .line 511
    iput v10, v5, Lwk7;->b:I

    .line 512
    .line 513
    :goto_14
    iput-boolean v8, v5, Lwk7;->e:Z

    .line 514
    .line 515
    :cond_25
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 516
    .line 517
    if-nez v11, :cond_27

    .line 518
    .line 519
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 520
    .line 521
    if-ne v11, v4, :cond_27

    .line 522
    .line 523
    iget-boolean v11, v5, Lwk7;->c:Z

    .line 524
    .line 525
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V:Z

    .line 526
    .line 527
    if-ne v11, v12, :cond_26

    .line 528
    .line 529
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 530
    .line 531
    .line 532
    move-result v11

    .line 533
    iget-boolean v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W:Z

    .line 534
    .line 535
    if-eq v11, v12, :cond_27

    .line 536
    .line 537
    :cond_26
    invoke-virtual {v9}, Lc00;->a()V

    .line 538
    .line 539
    .line 540
    iput-boolean v8, v5, Lwk7;->d:Z

    .line 541
    .line 542
    :cond_27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 543
    .line 544
    .line 545
    move-result v9

    .line 546
    if-lez v9, :cond_36

    .line 547
    .line 548
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 549
    .line 550
    if-eqz v9, :cond_28

    .line 551
    .line 552
    iget v9, v9, Lzk7;->c:I

    .line 553
    .line 554
    if-ge v9, v8, :cond_36

    .line 555
    .line 556
    :cond_28
    iget-boolean v9, v5, Lwk7;->d:Z

    .line 557
    .line 558
    if-eqz v9, :cond_2a

    .line 559
    .line 560
    move v3, v7

    .line 561
    :goto_15
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 562
    .line 563
    if-ge v3, v6, :cond_36

    .line 564
    .line 565
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 566
    .line 567
    aget-object v6, v6, v3

    .line 568
    .line 569
    invoke-virtual {v6}, Lp35;->b()V

    .line 570
    .line 571
    .line 572
    iget v6, v5, Lwk7;->b:I

    .line 573
    .line 574
    if-eq v6, v10, :cond_29

    .line 575
    .line 576
    iget-object v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 577
    .line 578
    aget-object v9, v9, v3

    .line 579
    .line 580
    iput v6, v9, Lp35;->b:I

    .line 581
    .line 582
    iput v6, v9, Lp35;->c:I

    .line 583
    .line 584
    :cond_29
    add-int/lit8 v3, v3, 0x1

    .line 585
    .line 586
    goto :goto_15

    .line 587
    :cond_2a
    if-nez v3, :cond_2c

    .line 588
    .line 589
    iget-object v3, v5, Lwk7;->f:[I

    .line 590
    .line 591
    if-nez v3, :cond_2b

    .line 592
    .line 593
    goto :goto_17

    .line 594
    :cond_2b
    move v3, v7

    .line 595
    :goto_16
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 596
    .line 597
    if-ge v3, v6, :cond_36

    .line 598
    .line 599
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 600
    .line 601
    aget-object v6, v6, v3

    .line 602
    .line 603
    invoke-virtual {v6}, Lp35;->b()V

    .line 604
    .line 605
    .line 606
    iget-object v9, v5, Lwk7;->f:[I

    .line 607
    .line 608
    aget v9, v9, v3

    .line 609
    .line 610
    iput v9, v6, Lp35;->b:I

    .line 611
    .line 612
    iput v9, v6, Lp35;->c:I

    .line 613
    .line 614
    add-int/lit8 v3, v3, 0x1

    .line 615
    .line 616
    goto :goto_16

    .line 617
    :cond_2c
    :goto_17
    move v3, v7

    .line 618
    :goto_18
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 619
    .line 620
    iget-object v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 621
    .line 622
    if-ge v3, v9, :cond_33

    .line 623
    .line 624
    aget-object v9, v11, v3

    .line 625
    .line 626
    iget-boolean v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 627
    .line 628
    iget v12, v5, Lwk7;->b:I

    .line 629
    .line 630
    iget-object v13, v9, Lp35;->g:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 633
    .line 634
    if-eqz v11, :cond_2d

    .line 635
    .line 636
    invoke-virtual {v9, v10}, Lp35;->i(I)I

    .line 637
    .line 638
    .line 639
    move-result v14

    .line 640
    goto :goto_19

    .line 641
    :cond_2d
    invoke-virtual {v9, v10}, Lp35;->k(I)I

    .line 642
    .line 643
    .line 644
    move-result v14

    .line 645
    :goto_19
    invoke-virtual {v9}, Lp35;->b()V

    .line 646
    .line 647
    .line 648
    if-ne v14, v10, :cond_2e

    .line 649
    .line 650
    goto :goto_1a

    .line 651
    :cond_2e
    if-eqz v11, :cond_2f

    .line 652
    .line 653
    iget-object v15, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 654
    .line 655
    invoke-virtual {v15}, Lgu2;->i()I

    .line 656
    .line 657
    .line 658
    move-result v15

    .line 659
    if-lt v14, v15, :cond_32

    .line 660
    .line 661
    :cond_2f
    if-nez v11, :cond_30

    .line 662
    .line 663
    iget-object v11, v13, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 664
    .line 665
    invoke-virtual {v11}, Lgu2;->m()I

    .line 666
    .line 667
    .line 668
    move-result v11

    .line 669
    if-le v14, v11, :cond_30

    .line 670
    .line 671
    goto :goto_1a

    .line 672
    :cond_30
    if-eq v12, v10, :cond_31

    .line 673
    .line 674
    add-int/2addr v14, v12

    .line 675
    :cond_31
    iput v14, v9, Lp35;->c:I

    .line 676
    .line 677
    iput v14, v9, Lp35;->b:I

    .line 678
    .line 679
    :cond_32
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    .line 680
    .line 681
    goto :goto_18

    .line 682
    :cond_33
    array-length v3, v11

    .line 683
    iget-object v9, v5, Lwk7;->f:[I

    .line 684
    .line 685
    if-eqz v9, :cond_34

    .line 686
    .line 687
    array-length v9, v9

    .line 688
    if-ge v9, v3, :cond_35

    .line 689
    .line 690
    :cond_34
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 691
    .line 692
    array-length v6, v6

    .line 693
    new-array v6, v6, [I

    .line 694
    .line 695
    iput-object v6, v5, Lwk7;->f:[I

    .line 696
    .line 697
    :cond_35
    move v6, v7

    .line 698
    :goto_1b
    if-ge v6, v3, :cond_36

    .line 699
    .line 700
    iget-object v9, v5, Lwk7;->f:[I

    .line 701
    .line 702
    aget-object v12, v11, v6

    .line 703
    .line 704
    invoke-virtual {v12, v10}, Lp35;->k(I)I

    .line 705
    .line 706
    .line 707
    move-result v12

    .line 708
    aput v12, v9, v6

    .line 709
    .line 710
    add-int/lit8 v6, v6, 0x1

    .line 711
    .line 712
    goto :goto_1b

    .line 713
    :cond_36
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/a;->A(Lvg6;)V

    .line 714
    .line 715
    .line 716
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 717
    .line 718
    iput-boolean v7, v3, Lms4;->a:Z

    .line 719
    .line 720
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Lgu2;

    .line 721
    .line 722
    invoke-virtual {v6}, Lgu2;->n()I

    .line 723
    .line 724
    .line 725
    move-result v9

    .line 726
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 727
    .line 728
    div-int v11, v9, v11

    .line 729
    .line 730
    iput v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 731
    .line 732
    invoke-virtual {v6}, Lgu2;->k()I

    .line 733
    .line 734
    .line 735
    move-result v11

    .line 736
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 737
    .line 738
    .line 739
    iget v9, v5, Lwk7;->a:I

    .line 740
    .line 741
    invoke-virtual {v0, v9, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p1(ILbh6;)V

    .line 742
    .line 743
    .line 744
    iget-boolean v9, v5, Lwk7;->c:Z

    .line 745
    .line 746
    if-eqz v9, :cond_37

    .line 747
    .line 748
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n1(I)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(Lvg6;Lms4;Lbh6;)I

    .line 752
    .line 753
    .line 754
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n1(I)V

    .line 755
    .line 756
    .line 757
    iget v4, v5, Lwk7;->a:I

    .line 758
    .line 759
    iget v9, v3, Lms4;->d:I

    .line 760
    .line 761
    add-int/2addr v4, v9

    .line 762
    iput v4, v3, Lms4;->c:I

    .line 763
    .line 764
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(Lvg6;Lms4;Lbh6;)I

    .line 765
    .line 766
    .line 767
    goto :goto_1c

    .line 768
    :cond_37
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n1(I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(Lvg6;Lms4;Lbh6;)I

    .line 772
    .line 773
    .line 774
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n1(I)V

    .line 775
    .line 776
    .line 777
    iget v4, v5, Lwk7;->a:I

    .line 778
    .line 779
    iget v9, v3, Lms4;->d:I

    .line 780
    .line 781
    add-int/2addr v4, v9

    .line 782
    iput v4, v3, Lms4;->c:I

    .line 783
    .line 784
    invoke-virtual {v0, v1, v3, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(Lvg6;Lms4;Lbh6;)I

    .line 785
    .line 786
    .line 787
    :goto_1c
    invoke-virtual {v6}, Lgu2;->k()I

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    const/high16 v4, 0x40000000    # 2.0f

    .line 792
    .line 793
    if-ne v3, v4, :cond_38

    .line 794
    .line 795
    goto/16 :goto_21

    .line 796
    .line 797
    :cond_38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 798
    .line 799
    .line 800
    move-result v3

    .line 801
    const/4 v4, 0x0

    .line 802
    move v9, v7

    .line 803
    :goto_1d
    if-ge v9, v3, :cond_3a

    .line 804
    .line 805
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 806
    .line 807
    .line 808
    move-result-object v11

    .line 809
    invoke-virtual {v6, v11}, Lgu2;->e(Landroid/view/View;)I

    .line 810
    .line 811
    .line 812
    move-result v12

    .line 813
    int-to-float v12, v12

    .line 814
    cmpg-float v13, v12, v4

    .line 815
    .line 816
    if-gez v13, :cond_39

    .line 817
    .line 818
    goto :goto_1e

    .line 819
    :cond_39
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 820
    .line 821
    .line 822
    move-result-object v11

    .line 823
    check-cast v11, Lxk7;

    .line 824
    .line 825
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 826
    .line 827
    .line 828
    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    .line 829
    .line 830
    .line 831
    move-result v4

    .line 832
    :goto_1e
    add-int/lit8 v9, v9, 0x1

    .line 833
    .line 834
    goto :goto_1d

    .line 835
    :cond_3a
    iget v9, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 836
    .line 837
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 838
    .line 839
    int-to-float v11, v11

    .line 840
    mul-float/2addr v4, v11

    .line 841
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 842
    .line 843
    .line 844
    move-result v4

    .line 845
    invoke-virtual {v6}, Lgu2;->k()I

    .line 846
    .line 847
    .line 848
    move-result v11

    .line 849
    if-ne v11, v10, :cond_3b

    .line 850
    .line 851
    invoke-virtual {v6}, Lgu2;->n()I

    .line 852
    .line 853
    .line 854
    move-result v10

    .line 855
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    .line 856
    .line 857
    .line 858
    move-result v4

    .line 859
    :cond_3b
    iget v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 860
    .line 861
    div-int v10, v4, v10

    .line 862
    .line 863
    iput v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 864
    .line 865
    invoke-virtual {v6}, Lgu2;->k()I

    .line 866
    .line 867
    .line 868
    move-result v6

    .line 869
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 870
    .line 871
    .line 872
    iget v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 873
    .line 874
    if-ne v4, v9, :cond_3c

    .line 875
    .line 876
    goto :goto_21

    .line 877
    :cond_3c
    move v4, v7

    .line 878
    :goto_1f
    if-ge v4, v3, :cond_3f

    .line 879
    .line 880
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 881
    .line 882
    .line 883
    move-result-object v6

    .line 884
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 885
    .line 886
    .line 887
    move-result-object v10

    .line 888
    check-cast v10, Lxk7;

    .line 889
    .line 890
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 894
    .line 895
    .line 896
    move-result v11

    .line 897
    iget v12, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 898
    .line 899
    if-eqz v11, :cond_3d

    .line 900
    .line 901
    if-ne v12, v8, :cond_3d

    .line 902
    .line 903
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 904
    .line 905
    sub-int/2addr v11, v8

    .line 906
    iget-object v10, v10, Lxk7;->e:Lp35;

    .line 907
    .line 908
    iget v10, v10, Lp35;->e:I

    .line 909
    .line 910
    sub-int/2addr v11, v10

    .line 911
    neg-int v10, v11

    .line 912
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 913
    .line 914
    mul-int/2addr v11, v10

    .line 915
    mul-int/2addr v10, v9

    .line 916
    sub-int/2addr v11, v10

    .line 917
    invoke-virtual {v6, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 918
    .line 919
    .line 920
    goto :goto_20

    .line 921
    :cond_3d
    iget-object v10, v10, Lxk7;->e:Lp35;

    .line 922
    .line 923
    iget v10, v10, Lp35;->e:I

    .line 924
    .line 925
    iget v11, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:I

    .line 926
    .line 927
    mul-int/2addr v11, v10

    .line 928
    mul-int/2addr v10, v9

    .line 929
    if-ne v12, v8, :cond_3e

    .line 930
    .line 931
    sub-int/2addr v11, v10

    .line 932
    invoke-virtual {v6, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 933
    .line 934
    .line 935
    goto :goto_20

    .line 936
    :cond_3e
    sub-int/2addr v11, v10

    .line 937
    invoke-virtual {v6, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 938
    .line 939
    .line 940
    :goto_20
    add-int/lit8 v4, v4, 0x1

    .line 941
    .line 942
    goto :goto_1f

    .line 943
    :cond_3f
    :goto_21
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 944
    .line 945
    .line 946
    move-result v3

    .line 947
    if-lez v3, :cond_41

    .line 948
    .line 949
    iget-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 950
    .line 951
    if-eqz v3, :cond_40

    .line 952
    .line 953
    invoke-virtual {v0, v1, v2, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V0(Lvg6;Lbh6;Z)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W0(Lvg6;Lbh6;Z)V

    .line 957
    .line 958
    .line 959
    goto :goto_22

    .line 960
    :cond_40
    invoke-virtual {v0, v1, v2, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W0(Lvg6;Lbh6;Z)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V0(Lvg6;Lbh6;Z)V

    .line 964
    .line 965
    .line 966
    :cond_41
    :goto_22
    if-eqz p3, :cond_43

    .line 967
    .line 968
    iget-boolean v3, v2, Lbh6;->g:Z

    .line 969
    .line 970
    if-nez v3, :cond_43

    .line 971
    .line 972
    iget v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U:I

    .line 973
    .line 974
    if-eqz v3, :cond_43

    .line 975
    .line 976
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 977
    .line 978
    .line 979
    move-result v3

    .line 980
    if-lez v3, :cond_43

    .line 981
    .line 982
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c1()Landroid/view/View;

    .line 983
    .line 984
    .line 985
    move-result-object v3

    .line 986
    if-eqz v3, :cond_43

    .line 987
    .line 988
    iget-object v3, v0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 989
    .line 990
    if-eqz v3, :cond_42

    .line 991
    .line 992
    iget-object v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->c0:Laq2;

    .line 993
    .line 994
    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 995
    .line 996
    .line 997
    :cond_42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 998
    .line 999
    .line 1000
    move-result v3

    .line 1001
    if-eqz v3, :cond_43

    .line 1002
    .line 1003
    goto :goto_23

    .line 1004
    :cond_43
    move v8, v7

    .line 1005
    :goto_23
    iget-boolean v3, v2, Lbh6;->g:Z

    .line 1006
    .line 1007
    if-eqz v3, :cond_44

    .line 1008
    .line 1009
    invoke-virtual {v5}, Lwk7;->a()V

    .line 1010
    .line 1011
    .line 1012
    :cond_44
    iget-boolean v3, v5, Lwk7;->c:Z

    .line 1013
    .line 1014
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V:Z

    .line 1015
    .line 1016
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v3

    .line 1020
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W:Z

    .line 1021
    .line 1022
    if-eqz v8, :cond_45

    .line 1023
    .line 1024
    invoke-virtual {v5}, Lwk7;->a()V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v0, v1, v2, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f1(Lvg6;Lbh6;Z)V

    .line 1028
    .line 1029
    .line 1030
    :cond_45
    return-void
.end method

.method public final g0(Lvg6;Lbh6;Lm6;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/a;->g0(Lvg6;Lbh6;Lm6;)V

    .line 2
    .line 3
    .line 4
    const-string p0, "androidx.recyclerview.widget.StaggeredGridLayoutManager"

    .line 5
    .line 6
    invoke-virtual {p3, p0}, Lm6;->i(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final g1(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    move p1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v2

    .line 13
    :goto_0
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 14
    .line 15
    if-eq p1, p0, :cond_1

    .line 16
    .line 17
    return v3

    .line 18
    :cond_1
    return v2

    .line 19
    :cond_2
    if-ne p1, v1, :cond_3

    .line 20
    .line 21
    move p1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_3
    move p1, v2

    .line 24
    :goto_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 25
    .line 26
    if-ne p1, v0, :cond_4

    .line 27
    .line 28
    move p1, v3

    .line 29
    goto :goto_2

    .line 30
    :cond_4
    move p1, v2

    .line 31
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-ne p1, p0, :cond_5

    .line 36
    .line 37
    return v3

    .line 38
    :cond_5
    return v2
.end method

.method public final h0(Lvg6;Lbh6;Landroid/view/View;Lm6;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p2, p1, Lxk7;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/a;->i0(Landroid/view/View;Lm6;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lxk7;

    .line 14
    .line 15
    iget-object p1, p1, Lxk7;->e:Lp35;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    const/4 p3, 0x1

    .line 19
    const/4 v0, -0x1

    .line 20
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 21
    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    move p0, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget p0, p1, Lp35;->e:I

    .line 29
    .line 30
    :goto_0
    invoke-static {p2, p0, p3, v0, v0}, Lom5;->e(ZIIII)Lom5;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p4, p0}, Lm6;->j(Lom5;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    if-nez p1, :cond_3

    .line 39
    .line 40
    move p0, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    iget p0, p1, Lp35;->e:I

    .line 43
    .line 44
    :goto_1
    invoke-static {p2, v0, v0, p0, p3}, Lom5;->e(ZIIII)Lom5;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p4, p0}, Lm6;->j(Lom5;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final h1(ILbh6;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    move v2, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 16
    .line 17
    iput-boolean v0, v3, Lms4;->a:Z

    .line 18
    .line 19
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p1(ILbh6;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n1(I)V

    .line 23
    .line 24
    .line 25
    iget p0, v3, Lms4;->d:I

    .line 26
    .line 27
    add-int/2addr v1, p0

    .line 28
    iput v1, v3, Lms4;->c:I

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    iput p0, v3, Lms4;->b:I

    .line 35
    .line 36
    return-void
.end method

.method public final i1(Lvg6;Lms4;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Lms4;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-boolean v0, p2, Lms4;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget v0, p2, Lms4;->b:I

    .line 12
    .line 13
    iget v1, p2, Lms4;->e:I

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget p2, p2, Lms4;->g:I

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j1(ILvg6;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget p2, p2, Lms4;->f:I

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k1(ILvg6;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    const/4 v0, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-ne v1, v2, :cond_6

    .line 35
    .line 36
    iget v1, p2, Lms4;->f:I

    .line 37
    .line 38
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 39
    .line 40
    aget-object v2, v2, v3

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lp35;->k(I)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 47
    .line 48
    if-ge v0, v3, :cond_4

    .line 49
    .line 50
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 51
    .line 52
    aget-object v3, v3, v0

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Lp35;->k(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-le v3, v2, :cond_3

    .line 59
    .line 60
    move v2, v3

    .line 61
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    sub-int/2addr v1, v2

    .line 65
    iget v0, p2, Lms4;->g:I

    .line 66
    .line 67
    if-gez v1, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    iget p2, p2, Lms4;->b:I

    .line 71
    .line 72
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    sub-int/2addr v0, p2

    .line 77
    :goto_1
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->j1(ILvg6;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_6
    iget v1, p2, Lms4;->g:I

    .line 82
    .line 83
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 84
    .line 85
    aget-object v2, v2, v3

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Lp35;->i(I)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    :goto_2
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 92
    .line 93
    if-ge v0, v3, :cond_8

    .line 94
    .line 95
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 96
    .line 97
    aget-object v3, v3, v0

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Lp35;->i(I)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-ge v3, v2, :cond_7

    .line 104
    .line 105
    move v2, v3

    .line 106
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_8
    iget v0, p2, Lms4;->g:I

    .line 110
    .line 111
    sub-int/2addr v2, v0

    .line 112
    iget v0, p2, Lms4;->f:I

    .line 113
    .line 114
    if-gez v2, :cond_9

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_9
    iget p2, p2, Lms4;->b:I

    .line 118
    .line 119
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    add-int/2addr v0, p2

    .line 124
    :goto_3
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->k1(ILvg6;)V

    .line 125
    .line 126
    .line 127
    :cond_a
    :goto_4
    return-void
.end method

.method public final j0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final j1(ILvg6;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Lgu2;->g(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-lt v4, p1, :cond_4

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lgu2;->q(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-lt v3, p1, :cond_4

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lxk7;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v4, v3, Lxk7;->e:Lp35;

    .line 37
    .line 38
    iget-object v4, v4, Lp35;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v1, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object v3, v3, Lxk7;->e:Lp35;

    .line 50
    .line 51
    iget-object v4, v3, Lp35;->f:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    add-int/lit8 v6, v5, -0x1

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lxk7;

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    iput-object v7, v6, Lxk7;->e:Lp35;

    .line 75
    .line 76
    iget-object v7, v6, Lqg6;->a:Lfh6;

    .line 77
    .line 78
    invoke-virtual {v7}, Lfh6;->i()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v7, :cond_1

    .line 83
    .line 84
    iget-object v6, v6, Lqg6;->a:Lfh6;

    .line 85
    .line 86
    invoke-virtual {v6}, Lfh6;->l()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    :cond_1
    iget v6, v3, Lp35;->d:I

    .line 93
    .line 94
    iget-object v7, v3, Lp35;->g:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 97
    .line 98
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 99
    .line 100
    invoke-virtual {v7, v4}, Lgu2;->e(Landroid/view/View;)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    sub-int/2addr v6, v4

    .line 105
    iput v6, v3, Lp35;->d:I

    .line 106
    .line 107
    :cond_2
    const/high16 v4, -0x80000000

    .line 108
    .line 109
    if-ne v5, v1, :cond_3

    .line 110
    .line 111
    iput v4, v3, Lp35;->b:I

    .line 112
    .line 113
    :cond_3
    iput v4, v3, Lp35;->c:I

    .line 114
    .line 115
    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/a;->y0(Landroid/view/View;Lvg6;)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v0, v0, -0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    :goto_1
    return-void
.end method

.method public final k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc00;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final k1(ILvg6;)V
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Lgu2;->d(Landroid/view/View;)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-gt v3, p1, :cond_4

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lgu2;->p(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-gt v2, p1, :cond_4

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lxk7;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object v3, v2, Lxk7;->e:Lp35;

    .line 36
    .line 37
    iget-object v3, v3, Lp35;->f:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/4 v4, 0x1

    .line 46
    if-ne v3, v4, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object v2, v2, Lxk7;->e:Lp35;

    .line 50
    .line 51
    iget-object v3, v2, Lp35;->f:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Lxk7;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    iput-object v5, v4, Lxk7;->e:Lp35;

    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/high16 v5, -0x80000000

    .line 75
    .line 76
    if-nez v3, :cond_1

    .line 77
    .line 78
    iput v5, v2, Lp35;->c:I

    .line 79
    .line 80
    :cond_1
    iget-object v3, v4, Lqg6;->a:Lfh6;

    .line 81
    .line 82
    invoke-virtual {v3}, Lfh6;->i()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_2

    .line 87
    .line 88
    iget-object v3, v4, Lqg6;->a:Lfh6;

    .line 89
    .line 90
    invoke-virtual {v3}, Lfh6;->l()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    :cond_2
    iget v3, v2, Lp35;->d:I

    .line 97
    .line 98
    iget-object v4, v2, Lp35;->g:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 101
    .line 102
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 103
    .line 104
    invoke-virtual {v4, v0}, Lgu2;->e(Landroid/view/View;)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    sub-int/2addr v3, v0

    .line 109
    iput v3, v2, Lp35;->d:I

    .line 110
    .line 111
    :cond_3
    iput v5, v2, Lp35;->b:I

    .line 112
    .line 113
    invoke-virtual {p0, v1, p2}, Landroidx/recyclerview/widget/a;->y0(Landroid/view/View;Lvg6;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    :goto_1
    return-void
.end method

.method public final l0(II)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final l1()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->d1()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 14
    .line 15
    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 22
    .line 23
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/a;->m(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final m0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final m1(ILvg6;Lbh6;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h1(ILbh6;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 15
    .line 16
    invoke-virtual {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S0(Lvg6;Lms4;Lbh6;)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    iget v2, v0, Lms4;->b:I

    .line 21
    .line 22
    if-ge v2, p3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    if-gez p1, :cond_2

    .line 26
    .line 27
    neg-int p1, p3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move p1, p3

    .line 30
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 31
    .line 32
    neg-int v2, p1

    .line 33
    invoke-virtual {p3, v2}, Lgu2;->r(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 37
    .line 38
    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V:Z

    .line 39
    .line 40
    iput v1, v0, Lms4;->b:I

    .line 41
    .line 42
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->i1(Lvg6;Lms4;)V

    .line 43
    .line 44
    .line 45
    return p1

    .line 46
    :cond_3
    :goto_1
    return v1
.end method

.method public final n1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 2
    .line 3
    iput p1, v0, Lms4;->e:I

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, -0x1

    .line 9
    if-ne p1, v2, :cond_0

    .line 10
    .line 11
    move p1, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    if-ne p0, p1, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v1, v2

    .line 18
    :goto_1
    iput v1, v0, Lms4;->d:I

    .line 19
    .line 20
    return-void
.end method

.method public final o()Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final o0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b1(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final o1(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 10
    .line 11
    invoke-virtual {v0}, Lc00;->a()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 15
    .line 16
    .line 17
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 18
    .line 19
    new-instance p1, Ljava/util/BitSet;

    .line 20
    .line 21
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q:Ljava/util/BitSet;

    .line 27
    .line 28
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 29
    .line 30
    new-array p1, p1, [Lp35;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 36
    .line 37
    if-ge p1, v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 40
    .line 41
    new-instance v1, Lp35;

    .line 42
    .line 43
    invoke-direct {v1, p0, p1}, Lp35;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    .line 44
    .line 45
    .line 46
    aput-object v1, v0, p1

    .line 47
    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final p0(Lvg6;Lbh6;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->f1(Lvg6;Lbh6;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final p1(ILbh6;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lms4;->b:I

    .line 5
    .line 6
    iput p1, v0, Lms4;->c:I

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->e:Lav4;

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-boolean v2, v2, Lav4;->e:Z

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    iget p2, p2, Lbh6;->a:I

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    if-eq p2, v2, :cond_2

    .line 23
    .line 24
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 25
    .line 26
    if-ge p2, p1, :cond_0

    .line 27
    .line 28
    move p1, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, v1

    .line 31
    :goto_0
    if-ne v2, p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v3}, Lgu2;->n()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    move p2, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v3}, Lgu2;->n()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    move p2, p1

    .line 44
    move p1, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move p1, v1

    .line 47
    move p2, p1

    .line 48
    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->n:Z

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v3}, Lgu2;->m()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    sub-int/2addr p0, p2

    .line 61
    iput p0, v0, Lms4;->f:I

    .line 62
    .line 63
    invoke-virtual {v3}, Lgu2;->i()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    add-int/2addr p0, p1

    .line 68
    iput p0, v0, Lms4;->g:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {v3}, Lgu2;->h()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    add-int/2addr p0, p1

    .line 76
    iput p0, v0, Lms4;->g:I

    .line 77
    .line 78
    neg-int p0, p2

    .line 79
    iput p0, v0, Lms4;->f:I

    .line 80
    .line 81
    :goto_2
    iput-boolean v1, v0, Lms4;->h:Z

    .line 82
    .line 83
    iput-boolean v4, v0, Lms4;->a:Z

    .line 84
    .line 85
    invoke-virtual {v3}, Lgu2;->k()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v3}, Lgu2;->h()I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-nez p0, :cond_4

    .line 96
    .line 97
    move v1, v4

    .line 98
    :cond_4
    iput-boolean v1, v0, Lms4;->i:Z

    .line 99
    .line 100
    return-void
.end method

.method public final q(Lqg6;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lxk7;

    .line 2
    .line 3
    return p0
.end method

.method public final q0(Lbh6;)V
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 3
    .line 4
    const/high16 p1, -0x80000000

    .line 5
    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->S:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Z:Lwk7;

    .line 12
    .line 13
    invoke-virtual {p0}, Lwk7;->a()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final q1(Lp35;II)V
    .locals 5

    .line 1
    iget v0, p1, Lp35;->d:I

    .line 2
    .line 3
    iget v1, p1, Lp35;->e:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/high16 v3, -0x80000000

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-ne p2, v2, :cond_1

    .line 10
    .line 11
    iget p2, p1, Lp35;->b:I

    .line 12
    .line 13
    if-eq p2, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p1, Lp35;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lxk7;

    .line 31
    .line 32
    iget-object v3, p1, Lp35;->g:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 35
    .line 36
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 37
    .line 38
    invoke-virtual {v3, p2}, Lgu2;->g(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iput p2, p1, Lp35;->b:I

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iget p2, p1, Lp35;->b:I

    .line 48
    .line 49
    :goto_0
    add-int/2addr p2, v0

    .line 50
    if-gt p2, p3, :cond_3

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q:Ljava/util/BitSet;

    .line 53
    .line 54
    invoke-virtual {p0, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget p2, p1, Lp35;->c:I

    .line 59
    .line 60
    if-eq p2, v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p1}, Lp35;->a()V

    .line 64
    .line 65
    .line 66
    iget p2, p1, Lp35;->c:I

    .line 67
    .line 68
    :goto_1
    sub-int/2addr p2, v0

    .line 69
    if-lt p2, p3, :cond_3

    .line 70
    .line 71
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q:Ljava/util/BitSet;

    .line 72
    .line 73
    invoke-virtual {p0, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public final r0(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lzk7;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lzk7;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 8
    .line 9
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R:I

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iput v1, p1, Lzk7;->a:I

    .line 15
    .line 16
    iput v1, p1, Lzk7;->b:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lzk7;->d:[I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, p1, Lzk7;->c:I

    .line 23
    .line 24
    iput v1, p1, Lzk7;->e:I

    .line 25
    .line 26
    iput-object v0, p1, Lzk7;->f:[I

    .line 27
    .line 28
    iput-object v0, p1, Lzk7;->k:Ljava/util/ArrayList;

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final s(IILbh6;Lru3;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move p1, p2

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_7

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto :goto_5

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h1(ILbh6;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b0:[I

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    array-length p1, p1

    .line 24
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 25
    .line 26
    if-ge p1, p2, :cond_3

    .line 27
    .line 28
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 29
    .line 30
    new-array p1, p1, [I

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b0:[I

    .line 33
    .line 34
    :cond_3
    const/4 p1, 0x0

    .line 35
    move p2, p1

    .line 36
    move v0, p2

    .line 37
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:Lms4;

    .line 40
    .line 41
    if-ge p2, v1, :cond_6

    .line 42
    .line 43
    iget v1, v2, Lms4;->d:I

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-ne v1, v3, :cond_4

    .line 47
    .line 48
    iget v1, v2, Lms4;->f:I

    .line 49
    .line 50
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 51
    .line 52
    aget-object v2, v2, p2

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lp35;->k(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :goto_2
    sub-int/2addr v1, v2

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 61
    .line 62
    aget-object v1, v1, p2

    .line 63
    .line 64
    iget v3, v2, Lms4;->g:I

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Lp35;->i(I)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    iget v2, v2, Lms4;->g:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_3
    if-ltz v1, :cond_5

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b0:[I

    .line 76
    .line 77
    aput v1, v2, v0

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b0:[I

    .line 85
    .line 86
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    .line 87
    .line 88
    .line 89
    :goto_4
    if-ge p1, v0, :cond_7

    .line 90
    .line 91
    iget p2, v2, Lms4;->c:I

    .line 92
    .line 93
    if-ltz p2, :cond_7

    .line 94
    .line 95
    invoke-virtual {p3}, Lbh6;->b()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-ge p2, v1, :cond_7

    .line 100
    .line 101
    iget p2, v2, Lms4;->c:I

    .line 102
    .line 103
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b0:[I

    .line 104
    .line 105
    aget v1, v1, p1

    .line 106
    .line 107
    invoke-virtual {p4, p2, v1}, Lru3;->b(II)V

    .line 108
    .line 109
    .line 110
    iget p2, v2, Lms4;->c:I

    .line 111
    .line 112
    iget v1, v2, Lms4;->d:I

    .line 113
    .line 114
    add-int/2addr p2, v1

    .line 115
    iput p2, v2, Lms4;->c:I

    .line 116
    .line 117
    add-int/lit8 p1, p1, 0x1

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_7
    :goto_5
    return-void
.end method

.method public final s0()Landroid/os/Parcelable;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X:Lzk7;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lzk7;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, v0, Lzk7;->c:I

    .line 11
    .line 12
    iput v1, p0, Lzk7;->c:I

    .line 13
    .line 14
    iget v1, v0, Lzk7;->a:I

    .line 15
    .line 16
    iput v1, p0, Lzk7;->a:I

    .line 17
    .line 18
    iget v1, v0, Lzk7;->b:I

    .line 19
    .line 20
    iput v1, p0, Lzk7;->b:I

    .line 21
    .line 22
    iget-object v1, v0, Lzk7;->d:[I

    .line 23
    .line 24
    iput-object v1, p0, Lzk7;->d:[I

    .line 25
    .line 26
    iget v1, v0, Lzk7;->e:I

    .line 27
    .line 28
    iput v1, p0, Lzk7;->e:I

    .line 29
    .line 30
    iget-object v1, v0, Lzk7;->f:[I

    .line 31
    .line 32
    iput-object v1, p0, Lzk7;->f:[I

    .line 33
    .line 34
    iget-boolean v1, v0, Lzk7;->n:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Lzk7;->n:Z

    .line 37
    .line 38
    iget-boolean v1, v0, Lzk7;->p:Z

    .line 39
    .line 40
    iput-boolean v1, p0, Lzk7;->p:Z

    .line 41
    .line 42
    iget-boolean v1, v0, Lzk7;->q:Z

    .line 43
    .line 44
    iput-boolean v1, p0, Lzk7;->q:Z

    .line 45
    .line 46
    iget-object v0, v0, Lzk7;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    iput-object v0, p0, Lzk7;->k:Ljava/util/ArrayList;

    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lzk7;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Z

    .line 57
    .line 58
    iput-boolean v1, v0, Lzk7;->n:Z

    .line 59
    .line 60
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V:Z

    .line 61
    .line 62
    iput-boolean v1, v0, Lzk7;->p:Z

    .line 63
    .line 64
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->W:Z

    .line 65
    .line 66
    iput-boolean v1, v0, Lzk7;->q:Z

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T:Lc00;

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    iget-object v3, v2, Lc00;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, [I

    .line 76
    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    iput-object v3, v0, Lzk7;->f:[I

    .line 80
    .line 81
    array-length v3, v3

    .line 82
    iput v3, v0, Lzk7;->e:I

    .line 83
    .line 84
    iget-object v2, v2, Lc00;->c:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v2, Ljava/util/ArrayList;

    .line 87
    .line 88
    iput-object v2, v0, Lzk7;->k:Ljava/util/ArrayList;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iput v1, v0, Lzk7;->e:I

    .line 92
    .line 93
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v3, -0x1

    .line 98
    if-lez v2, :cond_8

    .line 99
    .line 100
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V:Z

    .line 101
    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Y0()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->X0()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    :goto_1
    iput v2, v0, Lzk7;->a:I

    .line 114
    .line 115
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P:Z

    .line 116
    .line 117
    const/4 v4, 0x1

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(Z)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Z)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :goto_2
    if-nez v2, :cond_4

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    invoke-static {v2}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    :goto_3
    iput v3, v0, Lzk7;->b:I

    .line 137
    .line 138
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 139
    .line 140
    iput v2, v0, Lzk7;->c:I

    .line 141
    .line 142
    new-array v2, v2, [I

    .line 143
    .line 144
    iput-object v2, v0, Lzk7;->d:[I

    .line 145
    .line 146
    :goto_4
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:I

    .line 147
    .line 148
    if-ge v1, v2, :cond_7

    .line 149
    .line 150
    iget-boolean v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->V:Z

    .line 151
    .line 152
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:[Lp35;

    .line 153
    .line 154
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 155
    .line 156
    const/high16 v5, -0x80000000

    .line 157
    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    aget-object v2, v3, v1

    .line 161
    .line 162
    invoke-virtual {v2, v5}, Lp35;->i(I)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eq v2, v5, :cond_6

    .line 167
    .line 168
    invoke-virtual {v4}, Lgu2;->i()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    :goto_5
    sub-int/2addr v2, v3

    .line 173
    goto :goto_6

    .line 174
    :cond_5
    aget-object v2, v3, v1

    .line 175
    .line 176
    invoke-virtual {v2, v5}, Lp35;->k(I)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eq v2, v5, :cond_6

    .line 181
    .line 182
    invoke-virtual {v4}, Lgu2;->m()I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    goto :goto_5

    .line 187
    :cond_6
    :goto_6
    iget-object v3, v0, Lzk7;->d:[I

    .line 188
    .line 189
    aput v2, v3, v1

    .line 190
    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_7
    return-object v0

    .line 195
    :cond_8
    iput v3, v0, Lzk7;->a:I

    .line 196
    .line 197
    iput v3, v0, Lzk7;->b:I

    .line 198
    .line 199
    iput v1, v0, Lzk7;->c:I

    .line 200
    .line 201
    return-object v0
.end method

.method public final t0(I)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->Q0()Z

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public final u(Lbh6;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 24
    .line 25
    move-object v5, p0

    .line 26
    move-object v1, p1

    .line 27
    invoke-static/range {v1 .. v6}, Lg67;->h(Lbh6;Lgu2;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/a;Z)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final v(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final w(Lbh6;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 24
    .line 25
    move-object v5, p0

    .line 26
    move-object v1, p1

    .line 27
    invoke-static/range {v1 .. v6}, Lg67;->j(Lbh6;Lgu2;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/a;Z)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final x(Lbh6;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 24
    .line 25
    move-object v5, p0

    .line 26
    move-object v1, p1

    .line 27
    invoke-static/range {v1 .. v6}, Lg67;->h(Lbh6;Lgu2;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/a;Z)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final y(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->R0(Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final z(Lbh6;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 10
    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->U0(Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->T0(Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a0:Z

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Lgu2;

    .line 24
    .line 25
    move-object v5, p0

    .line 26
    move-object v1, p1

    .line 27
    invoke-static/range {v1 .. v6}, Lg67;->j(Lbh6;Lgu2;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/a;Z)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method
