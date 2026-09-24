.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final q0:[I

.field public static final r0:Lxg;

.field public static final s0:Lcm8;


# instance fields
.field public G:I

.field public H:F

.field public I:F

.field public J:I

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:I

.field public S:I

.field public T:F

.field public U:F

.field public V:F

.field public W:F

.field public a:I

.field public a0:I

.field public final b:Ljava/util/ArrayList;

.field public b0:Landroid/view/VelocityTracker;

.field public final c:Lem8;

.field public c0:I

.field public final d:Landroid/graphics/Rect;

.field public d0:I

.field public e:Low5;

.field public e0:I

.field public f:I

.field public f0:I

.field public g0:Landroid/widget/EdgeEffect;

.field public h0:Landroid/widget/EdgeEffect;

.field public i0:Z

.field public j0:Z

.field public k:I

.field public k0:I

.field public l0:Ljava/util/ArrayList;

.field public m0:Lgm8;

.field public n:Landroid/os/Parcelable;

.field public n0:Ljava/util/ArrayList;

.field public final o0:Lw8;

.field public p:Landroid/widget/Scroller;

.field public p0:I

.field public q:Z

.field public r:Lhm8;

.field public t:I

.field public x:Landroid/graphics/drawable/Drawable;

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100b3

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->q0:[I

    .line 9
    .line 10
    new-instance v0, Lxg;

    .line 11
    .line 12
    const/16 v1, 0xa

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lxg;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->r0:Lxg;

    .line 18
    .line 19
    new-instance v0, Lcm8;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/viewpager/widget/ViewPager;->s0:Lcm8;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Lem8;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Lem8;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->k:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Landroid/os/Parcelable;

    .line 30
    .line 31
    const v0, -0x800001

    .line 32
    .line 33
    .line 34
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 35
    .line 36
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 37
    .line 38
    .line 39
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 43
    .line 44
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 45
    .line 46
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 47
    .line 48
    new-instance p1, Lw8;

    .line 49
    .line 50
    const/4 v0, 0x4

    .line 51
    invoke-direct {p1, p0, v0}, Lw8;-><init>(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->o0:Lw8;

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->p0:I

    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->l()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 65
    new-instance p1, Lem8;

    .line 66
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Lem8;

    .line 68
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->k:I

    const/4 p2, 0x0

    .line 70
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->n:Landroid/os/Parcelable;

    const p2, -0x800001

    .line 71
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 72
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    const/4 p2, 0x1

    .line 73
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 74
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 75
    iput-boolean p2, p0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 76
    new-instance p1, Lw8;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lw8;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->o0:Lw8;

    const/4 p1, 0x0

    .line 77
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->p0:I

    .line 78
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->l()V

    return-void
.end method

.method public static d(IIILandroid/view/View;Z)Z
    .locals 9

    .line 1
    instance-of v0, p3, Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    move-object v0, p3

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v4, v1

    .line 22
    :goto_0
    if-ltz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    add-int v6, p1, v2

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-lt v6, v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-ge v6, v7, :cond_0

    .line 41
    .line 42
    add-int v7, p2, v3

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-lt v7, v8, :cond_0

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-ge v7, v8, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    sub-int/2addr v6, v8

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    sub-int/2addr v7, v8

    .line 66
    invoke-static {p0, v6, v7, v5, v1}, Landroidx/viewpager/widget/ViewPager;->d(IIILandroid/view/View;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    if-eqz p4, :cond_2

    .line 77
    .line 78
    neg-int p0, p0

    .line 79
    invoke-virtual {p3, p0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    :goto_1
    return v1

    .line 86
    :cond_2
    const/4 p0, 0x0

    .line 87
    return p0
.end method

.method private getClientWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    sub-int/2addr v0, p0

    .line 15
    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->L:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->L:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Lem8;
    .locals 11

    .line 1
    new-instance v0, Lem8;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lem8;->b:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 9
    .line 10
    check-cast v1, Landroidx/fragment/app/b0;

    .line 11
    .line 12
    iget-object v2, v1, Landroidx/fragment/app/b0;->b:Lur3;

    .line 13
    .line 14
    iget-object v3, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v3, Landroidx/fragment/app/a;

    .line 22
    .line 23
    invoke-direct {v3, v2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 24
    .line 25
    .line 26
    iput-object v3, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 27
    .line 28
    :cond_0
    int-to-long v3, p1

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v7, "android:switcher:"

    .line 36
    .line 37
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ":"

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v2, v6}, Landroidx/fragment/app/z;->D(Ljava/lang/String;)Landroidx/fragment/app/o;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v6, 0x1

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget-object p1, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v3, Lds3;

    .line 68
    .line 69
    const/4 v4, 0x7

    .line 70
    invoke-direct {v3, v4, v2}, Lds3;-><init>(ILandroidx/fragment/app/o;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroidx/fragment/app/a;->b(Lds3;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/fragment/app/b0;->g(I)Landroidx/fragment/app/o;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object p1, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    new-instance v10, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p1, v8, v2, v3, v6}, Landroidx/fragment/app/a;->g(ILandroidx/fragment/app/o;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    :goto_0
    iget-object p1, v1, Landroidx/fragment/app/b0;->e:Landroidx/fragment/app/o;

    .line 113
    .line 114
    if-eq v2, p1, :cond_3

    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    invoke-virtual {v2, p1}, Landroidx/fragment/app/o;->setMenuVisibility(Z)V

    .line 118
    .line 119
    .line 120
    iget v3, v1, Landroidx/fragment/app/b0;->c:I

    .line 121
    .line 122
    if-ne v3, v6, :cond_2

    .line 123
    .line 124
    iget-object p1, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 125
    .line 126
    sget-object v1, Lst4;->d:Lst4;

    .line 127
    .line 128
    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/a;->k(Landroidx/fragment/app/o;Lst4;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/fragment/app/o;->setUserVisibleHint(Z)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_1
    iput-object v2, v0, Lem8;->a:Landroidx/fragment/app/o;

    .line 136
    .line 137
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    const/high16 p1, 0x3f800000    # 1.0f

    .line 143
    .line 144
    iput p1, v0, Lem8;->d:F

    .line 145
    .line 146
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 147
    .line 148
    if-ltz p2, :cond_5

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-lt p2, p1, :cond_4

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    return-object v0

    .line 161
    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    return-object v0
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x60000

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->i(Landroid/view/View;)Lem8;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget v4, v4, Lem8;->b:I

    .line 37
    .line 38
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 39
    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/high16 p2, 0x40000

    .line 49
    .line 50
    if-ne v1, p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne v0, p2, :cond_4

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/4 p2, 0x1

    .line 66
    and-int/2addr p3, p2

    .line 67
    if-ne p3, p2, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_5

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_5

    .line 80
    .line 81
    :cond_4
    :goto_1
    return-void

    .line 82
    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->i(Landroid/view/View;)Lem8;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget v2, v2, Lem8;->b:I

    .line 25
    .line 26
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :cond_0
    move-object v0, p3

    .line 12
    check-cast v0, Lfm8;

    .line 13
    .line 14
    iget-boolean v1, v0, Lfm8;->a:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-class v3, Ldm8;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    move v2, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    :goto_0
    or-int/2addr v1, v2

    .line 33
    iput-boolean v1, v0, Lfm8;->a:Z

    .line 34
    .line 35
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->K:Z

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    iput-boolean v3, v0, Lfm8;->d:Z

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const-string p0, "Cannot add pager decor view during layout"

    .line 48
    .line 49
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final b(Lgm8;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final c(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ne v0, p0, :cond_0

    .line 7
    .line 8
    :goto_0
    move-object v0, v1

    .line 9
    goto :goto_3

    .line 10
    :cond_0
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    if-ne v2, p0, :cond_1

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    const-string v3, " => "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "arrowScroll tried to find focus based on non-child current focused view "

    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "ViewPager"

    .line 84
    .line 85
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_4
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/4 v2, 0x1

    .line 98
    const/4 v3, 0x0

    .line 99
    const/16 v4, 0x42

    .line 100
    .line 101
    const/16 v5, 0x11

    .line 102
    .line 103
    if-eqz v1, :cond_8

    .line 104
    .line 105
    if-eq v1, v0, :cond_8

    .line 106
    .line 107
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/graphics/Rect;

    .line 108
    .line 109
    if-ne p1, v5, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0, v6, v1}, Landroidx/viewpager/widget/ViewPager;->h(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 116
    .line 117
    invoke-virtual {p0, v6, v0}, Landroidx/viewpager/widget/ViewPager;->h(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    if-lt v4, v5, :cond_5

    .line 126
    .line 127
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 128
    .line 129
    if-lez v0, :cond_c

    .line 130
    .line 131
    sub-int/2addr v0, v2

    .line 132
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 133
    .line 134
    invoke-virtual {p0, v0, v3, v2, v3}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    :goto_4
    move v3, v0

    .line 143
    goto :goto_7

    .line 144
    :cond_6
    if-ne p1, v4, :cond_d

    .line 145
    .line 146
    invoke-virtual {p0, v6, v1}, Landroidx/viewpager/widget/ViewPager;->h(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 151
    .line 152
    invoke-virtual {p0, v6, v0}, Landroidx/viewpager/widget/ViewPager;->h(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    if-gt v2, v3, :cond_7

    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    goto :goto_4

    .line 167
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    if-eq p1, v5, :cond_b

    .line 173
    .line 174
    if-ne p1, v2, :cond_9

    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_9
    if-eq p1, v4, :cond_a

    .line 178
    .line 179
    const/4 v0, 0x2

    .line 180
    if-ne p1, v0, :cond_d

    .line 181
    .line 182
    :cond_a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    goto :goto_7

    .line 187
    :cond_b
    :goto_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 188
    .line 189
    if-lez v0, :cond_c

    .line 190
    .line 191
    sub-int/2addr v0, v2

    .line 192
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 193
    .line 194
    invoke-virtual {p0, v0, v3, v2, v3}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 195
    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_c
    move v2, v3

    .line 199
    :goto_6
    move v3, v2

    .line 200
    :cond_d
    :goto_7
    if-eqz v3, :cond_e

    .line 201
    .line 202
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 207
    .line 208
    .line 209
    :cond_e
    return v3
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    int-to-float p1, v0

    .line 19
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 20
    .line 21
    mul-float/2addr p1, p0

    .line 22
    float-to-int p0, p1

    .line 23
    if-le v2, p0, :cond_1

    .line 24
    .line 25
    return v3

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    if-lez p1, :cond_3

    .line 28
    .line 29
    int-to-float p1, v0

    .line 30
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    .line 31
    .line 32
    mul-float/2addr p1, p0

    .line 33
    float-to-int p0, p1

    .line 34
    if-ge v2, p0, :cond_3

    .line 35
    .line 36
    return v3

    .line 37
    :cond_3
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lfm8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final computeScroll()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->q:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    .line 42
    if-eq v1, v3, :cond_1

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->p(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x15

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v0, v3, :cond_4

    .line 23
    .line 24
    const/16 v3, 0x16

    .line 25
    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    const/16 v3, 0x3d

    .line 29
    .line 30
    if-eq v0, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->o()Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/16 p1, 0x42

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 80
    .line 81
    if-lez p1, :cond_6

    .line 82
    .line 83
    sub-int/2addr p1, v1

    .line 84
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 85
    .line 86
    invoke-virtual {p0, p1, v2, v1, v2}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 87
    .line 88
    .line 89
    move p0, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const/16 p1, 0x11

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->c(I)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    goto :goto_1

    .line 98
    :cond_6
    :goto_0
    move p0, v2

    .line 99
    :goto_1
    if-eqz p0, :cond_7

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    return v2

    .line 103
    :cond_8
    :goto_2
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->i(Landroid/view/View;)Lem8;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget v4, v4, Lem8;->b:I

    .line 39
    .line 40
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Low5;->c()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-le v0, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->h0:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    sub-int/2addr v1, v2

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    sub-int/2addr v1, v2

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/high16 v3, 0x43870000    # 270.0f

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 70
    .line 71
    .line 72
    neg-int v3, v1

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    add-int/2addr v4, v3

    .line 78
    int-to-float v3, v4

    .line 79
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 80
    .line 81
    int-to-float v5, v2

    .line 82
    mul-float/2addr v4, v5

    .line 83
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {v3, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 98
    .line 99
    .line 100
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->h0:Landroid/widget/EdgeEffect;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    sub-int/2addr v3, v4

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    sub-int/2addr v3, v4

    .line 130
    const/high16 v4, 0x42b40000    # 90.0f

    .line 131
    .line 132
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    neg-int v4, v4

    .line 140
    int-to-float v4, v4

    .line 141
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    .line 142
    .line 143
    const/high16 v6, 0x3f800000    # 1.0f

    .line 144
    .line 145
    add-float/2addr v5, v6

    .line 146
    neg-float v5, v5

    .line 147
    int-to-float v6, v2

    .line 148
    mul-float/2addr v5, v6

    .line 149
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->h0:Landroid/widget/EdgeEffect;

    .line 153
    .line 154
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->h0:Landroid/widget/EdgeEffect;

    .line 158
    .line 159
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    or-int/2addr v1, v2

    .line 164
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 165
    .line 166
    .line 167
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 168
    .line 169
    sget-object p1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 172
    .line 173
    .line 174
    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->p0:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ne v1, v5, :cond_1

    .line 50
    .line 51
    if-eq v4, v6, :cond_2

    .line 52
    .line 53
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 54
    .line 55
    .line 56
    if-eq v5, v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->p(I)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 62
    .line 63
    move v1, v3

    .line 64
    :goto_1
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-ge v1, v5, :cond_4

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lem8;

    .line 77
    .line 78
    iget-boolean v5, v4, Lem8;->c:Z

    .line 79
    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    iput-boolean v3, v4, Lem8;->c:Z

    .line 83
    .line 84
    move v0, v2

    .line 85
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    if-eqz v0, :cond_6

    .line 89
    .line 90
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o0:Lw8;

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    sget-object p1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    invoke-virtual {v0}, Lw8;->run()V

    .line 101
    .line 102
    .line 103
    :cond_6
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 2
    .line 3
    invoke-virtual {v0}, Low5;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->a:I

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 16
    .line 17
    mul-int/lit8 v3, v3, 0x2

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    add-int/2addr v3, v4

    .line 21
    const/4 v5, 0x0

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    move v0, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v5

    .line 33
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 34
    .line 35
    move v3, v5

    .line 36
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ge v3, v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lem8;

    .line 47
    .line 48
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 49
    .line 50
    iget-object v6, v6, Lem8;->a:Landroidx/fragment/app/o;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget-object v3, Landroidx/viewpager/widget/ViewPager;->r0:Lxg;

    .line 59
    .line 60
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    move v1, v5

    .line 70
    :goto_2
    if-ge v1, v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lfm8;

    .line 81
    .line 82
    iget-boolean v6, v3, Lfm8;->a:Z

    .line 83
    .line 84
    if-nez v6, :cond_2

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    iput v6, v3, Lfm8;->c:F

    .line 88
    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {p0, v2, v5, v5, v4}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m0:Lgm8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lgm8;->b(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lgm8;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {v2, p1}, Lgm8;->b(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Lfm8;

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lfm8;->c:F

    .line 9
    .line 10
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lfm8;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lfm8;->c:F

    .line 12
    .line 13
    sget-object v1, Landroidx/viewpager/widget/ViewPager;->q0:[I

    .line 14
    .line 15
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    const/16 v1, 0x30

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, v0, Lfm8;->b:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 32
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Low5;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public getCurrentItem()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public getOffscreenPageLimit()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 2
    .line 3
    return p0
.end method

.method public getPageMargin()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 2
    .line 3
    return p0
.end method

.method public final h(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-eq p2, p0, :cond_2

    .line 48
    .line 49
    check-cast p2, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v1, v0

    .line 58
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v0

    .line 67
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-object p1
.end method

.method public final i(Landroid/view/View;)Lem8;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lem8;

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 17
    .line 18
    iget-object v3, v1, Lem8;->a:Landroidx/fragment/app/o;

    .line 19
    .line 20
    invoke-virtual {v2, p1, v3}, Low5;->e(Landroid/view/View;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public final j()Lem8;
    .locals 13

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    int-to-float v3, v0

    .line 14
    div-float/2addr v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v1

    .line 26
    :goto_1
    const/4 v0, 0x0

    .line 27
    const/4 v4, -0x1

    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    move v8, v0

    .line 31
    move v9, v5

    .line 32
    move-object v7, v6

    .line 33
    move v6, v4

    .line 34
    move v4, v1

    .line 35
    :goto_2
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-ge v8, v11, :cond_6

    .line 42
    .line 43
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    check-cast v11, Lem8;

    .line 48
    .line 49
    if-nez v9, :cond_2

    .line 50
    .line 51
    iget v12, v11, Lem8;->b:I

    .line 52
    .line 53
    add-int/2addr v6, v5

    .line 54
    if-eq v12, v6, :cond_2

    .line 55
    .line 56
    add-float/2addr v1, v4

    .line 57
    add-float/2addr v1, v3

    .line 58
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->c:Lem8;

    .line 59
    .line 60
    iput v1, v4, Lem8;->e:F

    .line 61
    .line 62
    iput v6, v4, Lem8;->b:I

    .line 63
    .line 64
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    .line 71
    iput v1, v4, Lem8;->d:F

    .line 72
    .line 73
    add-int/lit8 v8, v8, -0x1

    .line 74
    .line 75
    move-object v6, v4

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    move-object v6, v11

    .line 78
    :goto_3
    iget v1, v6, Lem8;->e:F

    .line 79
    .line 80
    iget v4, v6, Lem8;->d:F

    .line 81
    .line 82
    add-float/2addr v4, v1

    .line 83
    add-float/2addr v4, v3

    .line 84
    if-nez v9, :cond_3

    .line 85
    .line 86
    cmpl-float v9, v2, v1

    .line 87
    .line 88
    if-ltz v9, :cond_6

    .line 89
    .line 90
    :cond_3
    cmpg-float v4, v2, v4

    .line 91
    .line 92
    if-ltz v4, :cond_5

    .line 93
    .line 94
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    sub-int/2addr v4, v5

    .line 99
    if-ne v8, v4, :cond_4

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_4
    iget v4, v6, Lem8;->b:I

    .line 103
    .line 104
    iget v7, v6, Lem8;->d:F

    .line 105
    .line 106
    add-int/lit8 v8, v8, 0x1

    .line 107
    .line 108
    move-object v9, v6

    .line 109
    move v6, v4

    .line 110
    move v4, v7

    .line 111
    move-object v7, v9

    .line 112
    move v9, v0

    .line 113
    goto :goto_2

    .line 114
    :cond_5
    :goto_4
    return-object v6

    .line 115
    :cond_6
    return-object v7
.end method

.method public final k(I)Lem8;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lem8;

    .line 15
    .line 16
    iget v2, v1, Lem8;->b:I

    .line 17
    .line 18
    if-ne v2, p1, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final l()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3
    .line 4
    .line 5
    const/high16 v0, 0x40000

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroid/widget/Scroller;

    .line 19
    .line 20
    sget-object v3, Landroidx/viewpager/widget/ViewPager;->s0:Lcm8;

    .line 21
    .line 22
    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->S:I

    .line 46
    .line 47
    const/high16 v4, 0x43c80000    # 400.0f

    .line 48
    .line 49
    mul-float/2addr v4, v3

    .line 50
    float-to-int v4, v4

    .line 51
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->c0:I

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    .line 58
    .line 59
    new-instance v2, Landroid/widget/EdgeEffect;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroid/widget/EdgeEffect;

    .line 65
    .line 66
    new-instance v2, Landroid/widget/EdgeEffect;

    .line 67
    .line 68
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->h0:Landroid/widget/EdgeEffect;

    .line 72
    .line 73
    const/high16 v1, 0x41c80000    # 25.0f

    .line 74
    .line 75
    mul-float/2addr v1, v3

    .line 76
    float-to-int v1, v1

    .line 77
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->e0:I

    .line 78
    .line 79
    const/high16 v1, 0x40000000    # 2.0f

    .line 80
    .line 81
    mul-float/2addr v1, v3

    .line 82
    float-to-int v1, v1

    .line 83
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->f0:I

    .line 84
    .line 85
    const/high16 v1, 0x41800000    # 16.0f

    .line 86
    .line 87
    mul-float/2addr v3, v1

    .line 88
    float-to-int v1, v3

    .line 89
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->Q:I

    .line 90
    .line 91
    new-instance v1, Lu51;

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    invoke-direct {v1, p0, v2}, Lu51;-><init>(Landroid/view/View;I)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v1}, Ldl8;->n(Landroid/view/View;Lw5;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_0

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_0
    new-instance v0, Lot9;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object p0, v0, Lot9;->b:Ljava/lang/Object;

    .line 115
    .line 116
    new-instance v1, Landroid/graphics/Rect;

    .line 117
    .line 118
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v1, v0, Lot9;->a:Ljava/lang/Object;

    .line 122
    .line 123
    invoke-static {p0, v0}, Luk8;->c(Landroid/view/View;Lls5;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final m(FII)V
    .locals 11

    .line 1
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->k0:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lez p3, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    move v6, v0

    .line 28
    :goto_0
    if-ge v6, v5, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Lfm8;

    .line 39
    .line 40
    iget-boolean v9, v8, Lfm8;->a:Z

    .line 41
    .line 42
    if-nez v9, :cond_0

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget v8, v8, Lfm8;->b:I

    .line 46
    .line 47
    and-int/lit8 v8, v8, 0x7

    .line 48
    .line 49
    if-eq v8, v1, :cond_3

    .line 50
    .line 51
    const/4 v9, 0x3

    .line 52
    if-eq v8, v9, :cond_2

    .line 53
    .line 54
    const/4 v9, 0x5

    .line 55
    if-eq v8, v9, :cond_1

    .line 56
    .line 57
    move v8, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    sub-int v8, v4, v3

    .line 60
    .line 61
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    sub-int/2addr v8, v9

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    add-int/2addr v3, v9

    .line 71
    :goto_1
    move v10, v8

    .line 72
    move v8, v2

    .line 73
    move v2, v10

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    add-int/2addr v8, v2

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    sub-int v8, v4, v8

    .line 86
    .line 87
    div-int/lit8 v8, v8, 0x2

    .line 88
    .line 89
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    goto :goto_1

    .line 94
    :goto_2
    add-int/2addr v2, p3

    .line 95
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    sub-int/2addr v2, v9

    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 103
    .line 104
    .line 105
    :cond_4
    move v2, v8

    .line 106
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->m0:Lgm8;

    .line 110
    .line 111
    if-eqz p3, :cond_6

    .line 112
    .line 113
    invoke-interface {p3, p2, p1}, Lgm8;->c(IF)V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 117
    .line 118
    if-eqz p3, :cond_8

    .line 119
    .line 120
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    :goto_4
    if-ge v0, p3, :cond_8

    .line 125
    .line 126
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Lgm8;

    .line 133
    .line 134
    if-eqz v2, :cond_7

    .line 135
    .line 136
    invoke-interface {v2, p2, p1}, Lgm8;->c(IF)V

    .line 137
    .line 138
    .line 139
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->j0:Z

    .line 143
    .line 144
    return-void
.end method

.method public final n(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 31
    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final o()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 7
    .line 8
    invoke-virtual {v0}, Low5;->c()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr v0, v3

    .line 14
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 17
    .line 18
    add-int/2addr v0, v3

    .line 19
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1, v3, v1}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    return v1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->o0:Lw8;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 7
    .line 8
    if-lez v1, :cond_4

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_4

    .line 21
    .line 22
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 35
    .line 36
    int-to-float v4, v4

    .line 37
    int-to-float v5, v3

    .line 38
    div-float/2addr v4, v5

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Lem8;

    .line 45
    .line 46
    iget v8, v7, Lem8;->e:F

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    iget v10, v7, Lem8;->b:I

    .line 53
    .line 54
    add-int/lit8 v11, v9, -0x1

    .line 55
    .line 56
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    check-cast v11, Lem8;

    .line 61
    .line 62
    iget v11, v11, Lem8;->b:I

    .line 63
    .line 64
    :goto_0
    if-ge v10, v11, :cond_4

    .line 65
    .line 66
    :goto_1
    iget v12, v7, Lem8;->b:I

    .line 67
    .line 68
    if-le v10, v12, :cond_0

    .line 69
    .line 70
    if-ge v6, v9, :cond_0

    .line 71
    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Lem8;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    if-ne v10, v12, :cond_1

    .line 82
    .line 83
    iget v8, v7, Lem8;->e:F

    .line 84
    .line 85
    iget v12, v7, Lem8;->d:F

    .line 86
    .line 87
    add-float v13, v8, v12

    .line 88
    .line 89
    mul-float/2addr v13, v5

    .line 90
    add-float/2addr v8, v12

    .line 91
    add-float/2addr v8, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 94
    .line 95
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const/high16 v12, 0x3f800000    # 1.0f

    .line 99
    .line 100
    add-float v13, v8, v12

    .line 101
    .line 102
    mul-float/2addr v13, v5

    .line 103
    add-float/2addr v12, v4

    .line 104
    add-float/2addr v12, v8

    .line 105
    move v8, v12

    .line 106
    :goto_2
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 107
    .line 108
    int-to-float v12, v12

    .line 109
    add-float/2addr v12, v13

    .line 110
    int-to-float v14, v2

    .line 111
    cmpl-float v12, v12, v14

    .line 112
    .line 113
    if-lez v12, :cond_2

    .line 114
    .line 115
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->y:I

    .line 122
    .line 123
    move-object/from16 v16, v1

    .line 124
    .line 125
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    add-float/2addr v1, v13

    .line 129
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    move/from16 v17, v2

    .line 134
    .line 135
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->G:I

    .line 136
    .line 137
    invoke-virtual {v12, v14, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    move-object/from16 v2, p1

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_2
    move-object/from16 v16, v1

    .line 149
    .line 150
    move/from16 v17, v2

    .line 151
    .line 152
    move-object/from16 v2, p1

    .line 153
    .line 154
    :goto_3
    add-int v1, v17, v3

    .line 155
    .line 156
    int-to-float v1, v1

    .line 157
    cmpl-float v1, v13, v1

    .line 158
    .line 159
    if-lez v1, :cond_3

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 163
    .line 164
    move-object/from16 v1, v16

    .line 165
    .line 166
    move/from16 v2, v17

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_12

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->P:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    const/4 v3, 0x2

    .line 29
    if-eqz v0, :cond_d

    .line 30
    .line 31
    if-eq v0, v3, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->n(Landroid/view/MotionEvent;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_4
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-ne v0, v3, :cond_5

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 59
    .line 60
    sub-float v4, v3, v4

    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->W:F

    .line 71
    .line 72
    sub-float v6, v0, v6

    .line 73
    .line 74
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const/4 v7, 0x0

    .line 79
    cmpl-float v8, v4, v7

    .line 80
    .line 81
    if-eqz v8, :cond_8

    .line 82
    .line 83
    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 84
    .line 85
    iget v10, p0, Landroidx/viewpager/widget/ViewPager;->R:I

    .line 86
    .line 87
    int-to-float v10, v10

    .line 88
    cmpg-float v10, v9, v10

    .line 89
    .line 90
    if-gez v10, :cond_6

    .line 91
    .line 92
    if-gtz v8, :cond_8

    .line 93
    .line 94
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    iget v11, p0, Landroidx/viewpager/widget/ViewPager;->R:I

    .line 99
    .line 100
    sub-int/2addr v10, v11

    .line 101
    int-to-float v10, v10

    .line 102
    cmpl-float v9, v9, v10

    .line 103
    .line 104
    if-lez v9, :cond_7

    .line 105
    .line 106
    cmpg-float v7, v4, v7

    .line 107
    .line 108
    if-gez v7, :cond_7

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    float-to-int v4, v4

    .line 112
    float-to-int v7, v3

    .line 113
    float-to-int v9, v0

    .line 114
    invoke-static {v4, v7, v9, p0, v2}, Landroidx/viewpager/widget/ViewPager;->d(IIILandroid/view/View;Z)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_8

    .line 119
    .line 120
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 121
    .line 122
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->U:F

    .line 123
    .line 124
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->P:Z

    .line 125
    .line 126
    return v2

    .line 127
    :cond_8
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->S:I

    .line 128
    .line 129
    int-to-float v2, v2

    .line 130
    cmpl-float v4, v5, v2

    .line 131
    .line 132
    if-lez v4, :cond_b

    .line 133
    .line 134
    const/high16 v4, 0x3f000000    # 0.5f

    .line 135
    .line 136
    mul-float/2addr v5, v4

    .line 137
    cmpl-float v4, v5, v6

    .line 138
    .line 139
    if-lez v4, :cond_b

    .line 140
    .line 141
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 150
    .line 151
    .line 152
    :cond_9
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 153
    .line 154
    .line 155
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->V:F

    .line 156
    .line 157
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->S:I

    .line 158
    .line 159
    int-to-float v4, v4

    .line 160
    if-lez v8, :cond_a

    .line 161
    .line 162
    add-float/2addr v2, v4

    .line 163
    goto :goto_1

    .line 164
    :cond_a
    sub-float/2addr v2, v4

    .line 165
    :goto_1
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 166
    .line 167
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->U:F

    .line 168
    .line 169
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_b
    cmpl-float v0, v6, v2

    .line 174
    .line 175
    if-lez v0, :cond_c

    .line 176
    .line 177
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->P:Z

    .line 178
    .line 179
    :cond_c
    :goto_2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 180
    .line 181
    if-eqz v0, :cond_10

    .line 182
    .line 183
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->q(F)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_10

    .line 188
    .line 189
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->V:F

    .line 200
    .line 201
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->W:F

    .line 208
    .line 209
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->U:F

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 216
    .line 217
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->P:Z

    .line 218
    .line 219
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->q:Z

    .line 220
    .line 221
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 224
    .line 225
    .line 226
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->p0:I

    .line 227
    .line 228
    if-ne v0, v3, :cond_f

    .line 229
    .line 230
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 237
    .line 238
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    sub-int/2addr v0, v3

    .line 243
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->f0:I

    .line 248
    .line 249
    if-le v0, v3, :cond_f

    .line 250
    .line 251
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 252
    .line 253
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 254
    .line 255
    .line 256
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 257
    .line 258
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 259
    .line 260
    .line 261
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 262
    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    if-eqz v0, :cond_e

    .line 268
    .line 269
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 270
    .line 271
    .line 272
    :cond_e
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_f
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 277
    .line 278
    .line 279
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 280
    .line 281
    :cond_10
    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 282
    .line 283
    if-nez v0, :cond_11

    .line 284
    .line 285
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 290
    .line 291
    :cond_11
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 292
    .line 293
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 294
    .line 295
    .line 296
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 297
    .line 298
    return p0

    .line 299
    :cond_12
    :goto_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->u()Z

    .line 300
    .line 301
    .line 302
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    .line 9
    sub-int v3, p5, p3

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x8

    .line 34
    .line 35
    if-ge v10, v1, :cond_7

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eq v14, v12, :cond_6

    .line 46
    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lfm8;

    .line 52
    .line 53
    iget-boolean v14, v12, Lfm8;->a:Z

    .line 54
    .line 55
    if-eqz v14, :cond_6

    .line 56
    .line 57
    iget v12, v12, Lfm8;->b:I

    .line 58
    .line 59
    and-int/lit8 v14, v12, 0x7

    .line 60
    .line 61
    and-int/lit8 v12, v12, 0x70

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_2

    .line 65
    .line 66
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_1

    .line 68
    .line 69
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_0

    .line 71
    .line 72
    move v14, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v14, v2, v6

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    :goto_1
    move/from16 v17, v14

    .line 87
    .line 88
    move v14, v4

    .line 89
    move/from16 v4, v17

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    add-int/2addr v14, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    sub-int v14, v2, v14

    .line 103
    .line 104
    div-int/lit8 v14, v14, 0x2

    .line 105
    .line 106
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    goto :goto_1

    .line 111
    :goto_2
    const/16 v15, 0x10

    .line 112
    .line 113
    if-eq v12, v15, :cond_5

    .line 114
    .line 115
    const/16 v15, 0x30

    .line 116
    .line 117
    if-eq v12, v15, :cond_4

    .line 118
    .line 119
    const/16 v15, 0x50

    .line 120
    .line 121
    if-eq v12, v15, :cond_3

    .line 122
    .line 123
    move v12, v5

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    sub-int v12, v3, v7

    .line 126
    .line 127
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result v15

    .line 131
    sub-int/2addr v12, v15

    .line 132
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    add-int/2addr v7, v15

    .line 137
    :goto_3
    move/from16 v17, v12

    .line 138
    .line 139
    move v12, v5

    .line 140
    move/from16 v5, v17

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    add-int/2addr v12, v5

    .line 148
    goto :goto_4

    .line 149
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    sub-int v12, v3, v12

    .line 154
    .line 155
    div-int/lit8 v12, v12, 0x2

    .line 156
    .line 157
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    goto :goto_3

    .line 162
    :goto_4
    add-int/2addr v4, v8

    .line 163
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    add-int/2addr v15, v4

    .line 168
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 169
    .line 170
    .line 171
    move-result v16

    .line 172
    add-int v9, v16, v5

    .line 173
    .line 174
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v11, v11, 0x1

    .line 178
    .line 179
    move v5, v12

    .line 180
    move v4, v14

    .line 181
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_7
    sub-int/2addr v2, v4

    .line 186
    sub-int/2addr v2, v6

    .line 187
    const/4 v6, 0x0

    .line 188
    :goto_5
    if-ge v6, v1, :cond_a

    .line 189
    .line 190
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eq v9, v12, :cond_9

    .line 199
    .line 200
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Lfm8;

    .line 205
    .line 206
    iget-boolean v10, v9, Lfm8;->a:Z

    .line 207
    .line 208
    if-nez v10, :cond_9

    .line 209
    .line 210
    invoke-virtual {v0, v8}, Landroidx/viewpager/widget/ViewPager;->i(Landroid/view/View;)Lem8;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    if-eqz v10, :cond_9

    .line 215
    .line 216
    int-to-float v13, v2

    .line 217
    iget v10, v10, Lem8;->e:F

    .line 218
    .line 219
    mul-float/2addr v10, v13

    .line 220
    float-to-int v10, v10

    .line 221
    add-int/2addr v10, v4

    .line 222
    iget-boolean v14, v9, Lfm8;->d:Z

    .line 223
    .line 224
    if-eqz v14, :cond_8

    .line 225
    .line 226
    const/4 v14, 0x0

    .line 227
    iput-boolean v14, v9, Lfm8;->d:Z

    .line 228
    .line 229
    iget v9, v9, Lfm8;->c:F

    .line 230
    .line 231
    mul-float/2addr v13, v9

    .line 232
    float-to-int v9, v13

    .line 233
    const/high16 v13, 0x40000000    # 2.0f

    .line 234
    .line 235
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    sub-int v14, v3, v5

    .line 240
    .line 241
    sub-int/2addr v14, v7

    .line 242
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 247
    .line 248
    .line 249
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    add-int/2addr v9, v10

    .line 254
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    add-int/2addr v13, v5

    .line 259
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    .line 260
    .line 261
    .line 262
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_a
    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->y:I

    .line 266
    .line 267
    sub-int/2addr v3, v7

    .line 268
    iput v3, v0, Landroidx/viewpager/widget/ViewPager;->G:I

    .line 269
    .line 270
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->k0:I

    .line 271
    .line 272
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 273
    .line 274
    if-eqz v1, :cond_b

    .line 275
    .line 276
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 277
    .line 278
    const/4 v14, 0x0

    .line 279
    invoke-virtual {v0, v1, v14, v14, v14}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    .line 280
    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_b
    const/4 v14, 0x0

    .line 284
    :goto_6
    iput-boolean v14, v0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 285
    .line 286
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    div-int/lit8 p2, p1, 0xa

    .line 18
    .line 19
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->Q:I

    .line 20
    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->R:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    sub-int/2addr p1, p2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr p2, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sub-int/2addr p2, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    move v2, v0

    .line 56
    :goto_0
    const/16 v3, 0x8

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    .line 61
    if-ge v2, v1, :cond_c

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eq v7, v3, :cond_b

    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lfm8;

    .line 78
    .line 79
    if-eqz v3, :cond_b

    .line 80
    .line 81
    iget-boolean v7, v3, Lfm8;->a:Z

    .line 82
    .line 83
    if-eqz v7, :cond_b

    .line 84
    .line 85
    iget v7, v3, Lfm8;->b:I

    .line 86
    .line 87
    and-int/lit8 v8, v7, 0x7

    .line 88
    .line 89
    and-int/lit8 v7, v7, 0x70

    .line 90
    .line 91
    const/16 v9, 0x30

    .line 92
    .line 93
    if-eq v7, v9, :cond_1

    .line 94
    .line 95
    const/16 v9, 0x50

    .line 96
    .line 97
    if-ne v7, v9, :cond_0

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    move v7, v0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :goto_1
    move v7, v4

    .line 103
    :goto_2
    const/4 v9, 0x3

    .line 104
    if-eq v8, v9, :cond_3

    .line 105
    .line 106
    const/4 v9, 0x5

    .line 107
    if-ne v8, v9, :cond_2

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_2
    move v4, v0

    .line 111
    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    .line 112
    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    move v9, v8

    .line 116
    move v8, v5

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    if-eqz v4, :cond_5

    .line 119
    .line 120
    move v9, v5

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    move v9, v8

    .line 123
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    .line 125
    const/4 v11, -0x1

    .line 126
    const/4 v12, -0x2

    .line 127
    if-eq v10, v12, :cond_7

    .line 128
    .line 129
    if-eq v10, v11, :cond_6

    .line 130
    .line 131
    :goto_5
    move v8, v5

    .line 132
    goto :goto_6

    .line 133
    :cond_6
    move v10, p1

    .line 134
    goto :goto_5

    .line 135
    :cond_7
    move v10, p1

    .line 136
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    .line 138
    if-eq v3, v12, :cond_9

    .line 139
    .line 140
    if-eq v3, v11, :cond_8

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_8
    move v3, p2

    .line 144
    goto :goto_7

    .line 145
    :cond_9
    move v3, p2

    .line 146
    move v5, v9

    .line 147
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    .line 156
    .line 157
    .line 158
    if-eqz v7, :cond_a

    .line 159
    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sub-int/2addr p2, v3

    .line 165
    goto :goto_8

    .line 166
    :cond_a
    if-eqz v4, :cond_b

    .line 167
    .line 168
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    sub-int/2addr p1, v3

    .line 173
    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 177
    .line 178
    .line 179
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    .line 184
    .line 185
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->K:Z

    .line 186
    .line 187
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 188
    .line 189
    .line 190
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->K:Z

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    :goto_9
    if-ge v0, p2, :cond_f

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eq v2, v3, :cond_e

    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Lfm8;

    .line 213
    .line 214
    if-eqz v2, :cond_d

    .line 215
    .line 216
    iget-boolean v4, v2, Lfm8;->a:Z

    .line 217
    .line 218
    if-nez v4, :cond_e

    .line 219
    .line 220
    :cond_d
    int-to-float v4, p1

    .line 221
    iget v2, v2, Lfm8;->c:F

    .line 222
    .line 223
    mul-float/2addr v4, v2

    .line 224
    float-to-int v2, v4

    .line 225
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    .line 230
    .line 231
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 232
    .line 233
    .line 234
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_f
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v0

    .line 12
    move v0, v2

    .line 13
    move v4, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->i(Landroid/view/View;)Lem8;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    iget v6, v6, Lem8;->b:I

    .line 38
    .line 39
    iget v7, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 40
    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    add-int/2addr v0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lim8;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lim8;

    .line 10
    .line 11
    iget-object v0, p1, Le3;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 17
    .line 18
    iget v1, p1, Lim8;->c:I

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v1, v0, v0, p1}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->k:I

    .line 29
    .line 30
    iget-object p1, p1, Lim8;->d:Landroid/os/Parcelable;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->n:Landroid/os/Parcelable;

    .line 33
    .line 34
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lim8;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Le3;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 11
    .line 12
    iput v0, v1, Lim8;->c:I

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    iput-object p0, v1, Lim8;->d:Landroid/os/Parcelable;

    .line 23
    .line 24
    :cond_0
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 7
    .line 8
    invoke-virtual {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->t(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

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
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 17
    .line 18
    if-eqz v0, :cond_13

    .line 19
    .line 20
    invoke-virtual {v0}, Low5;->c()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    and-int/lit16 v0, v0, 0xff

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    if-eqz v0, :cond_10

    .line 51
    .line 52
    if-eq v0, v2, :cond_b

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    if-eq v0, v3, :cond_6

    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    if-eq v0, v3, :cond_5

    .line 59
    .line 60
    const/4 v3, 0x5

    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    const/4 v3, 0x6

    .line 64
    if-eq v0, v3, :cond_3

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->n(Landroid/view/MotionEvent;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_5
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 104
    .line 105
    if-eqz p1, :cond_11

    .line 106
    .line 107
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 108
    .line 109
    invoke-virtual {p0, p1, v1, v2, v1}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->u()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_6
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 119
    .line 120
    if-nez v0, :cond_a

    .line 121
    .line 122
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/4 v3, -0x1

    .line 129
    if-ne v0, v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->u()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 142
    .line 143
    sub-float v4, v3, v4

    .line 144
    .line 145
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->U:F

    .line 154
    .line 155
    sub-float v5, v0, v5

    .line 156
    .line 157
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->S:I

    .line 162
    .line 163
    int-to-float v6, v6

    .line 164
    cmpl-float v6, v4, v6

    .line 165
    .line 166
    if-lez v6, :cond_a

    .line 167
    .line 168
    cmpl-float v4, v4, v5

    .line 169
    .line 170
    if-lez v4, :cond_a

    .line 171
    .line 172
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    if-eqz v4, :cond_8

    .line 179
    .line 180
    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 181
    .line 182
    .line 183
    :cond_8
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->V:F

    .line 184
    .line 185
    sub-float/2addr v3, v4

    .line 186
    const/4 v5, 0x0

    .line 187
    cmpl-float v3, v3, v5

    .line 188
    .line 189
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->S:I

    .line 190
    .line 191
    if-lez v3, :cond_9

    .line 192
    .line 193
    int-to-float v3, v5

    .line 194
    add-float/2addr v4, v3

    .line 195
    goto :goto_0

    .line 196
    :cond_9
    int-to-float v3, v5

    .line 197
    sub-float/2addr v4, v3

    .line 198
    :goto_0
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 199
    .line 200
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->U:F

    .line 201
    .line 202
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 215
    .line 216
    .line 217
    :cond_a
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 218
    .line 219
    if-eqz v0, :cond_11

    .line 220
    .line 221
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 222
    .line 223
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->q(F)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    goto/16 :goto_3

    .line 236
    .line 237
    :cond_b
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 238
    .line 239
    if-eqz v0, :cond_11

    .line 240
    .line 241
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 242
    .line 243
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->d0:I

    .line 244
    .line 245
    int-to-float v3, v3

    .line 246
    const/16 v4, 0x3e8

    .line 247
    .line 248
    invoke-virtual {v0, v4, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 249
    .line 250
    .line 251
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 252
    .line 253
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    float-to-int v0, v0

    .line 258
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 259
    .line 260
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->j()Lem8;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 273
    .line 274
    int-to-float v6, v6

    .line 275
    int-to-float v3, v3

    .line 276
    div-float/2addr v6, v3

    .line 277
    iget v7, v5, Lem8;->b:I

    .line 278
    .line 279
    int-to-float v4, v4

    .line 280
    div-float/2addr v4, v3

    .line 281
    iget v3, v5, Lem8;->e:F

    .line 282
    .line 283
    sub-float/2addr v4, v3

    .line 284
    iget v3, v5, Lem8;->d:F

    .line 285
    .line 286
    add-float/2addr v3, v6

    .line 287
    div-float/2addr v4, v3

    .line 288
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 289
    .line 290
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->V:F

    .line 299
    .line 300
    sub-float/2addr p1, v3

    .line 301
    float-to-int p1, p1

    .line 302
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->e0:I

    .line 307
    .line 308
    if-le p1, v3, :cond_d

    .line 309
    .line 310
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->c0:I

    .line 315
    .line 316
    if-le p1, v3, :cond_d

    .line 317
    .line 318
    if-lez v0, :cond_c

    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :cond_d
    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 325
    .line 326
    if-lt v7, p1, :cond_e

    .line 327
    .line 328
    const p1, 0x3ecccccd    # 0.4f

    .line 329
    .line 330
    .line 331
    goto :goto_1

    .line 332
    :cond_e
    const p1, 0x3f19999a    # 0.6f

    .line 333
    .line 334
    .line 335
    :goto_1
    add-float/2addr v4, p1

    .line 336
    float-to-int p1, v4

    .line 337
    add-int/2addr v7, p1

    .line 338
    :goto_2
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-lez v3, :cond_f

    .line 345
    .line 346
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Lem8;

    .line 351
    .line 352
    invoke-static {p1, v2}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    check-cast p1, Lem8;

    .line 357
    .line 358
    iget v1, v1, Lem8;->b:I

    .line 359
    .line 360
    iget p1, p1, Lem8;->b:I

    .line 361
    .line 362
    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 367
    .line 368
    .line 369
    move-result v7

    .line 370
    :cond_f
    invoke-virtual {p0, v7, v0, v2, v2}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->u()Z

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    goto :goto_3

    .line 378
    :cond_10
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 381
    .line 382
    .line 383
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 384
    .line 385
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->V:F

    .line 393
    .line 394
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 395
    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->W:F

    .line 401
    .line 402
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->U:F

    .line 403
    .line 404
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 409
    .line 410
    :cond_11
    :goto_3
    if-eqz v1, :cond_12

    .line 411
    .line 412
    sget-object p1, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 413
    .line 414
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 415
    .line 416
    .line 417
    :cond_12
    return v2

    .line 418
    :cond_13
    :goto_4
    return v1
.end method

.method public final p(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "onPageScrolled did not call superclass implementation"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->j0:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1, v2, v2}, Landroidx/viewpager/widget/ViewPager;->m(FII)V

    .line 21
    .line 22
    .line 23
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->j0:Z

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    :goto_0
    return v2

    .line 28
    :cond_1
    invoke-static {v1}, Ll0;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->j()Lem8;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 41
    .line 42
    add-int v5, v3, v4

    .line 43
    .line 44
    int-to-float v4, v4

    .line 45
    int-to-float v3, v3

    .line 46
    div-float/2addr v4, v3

    .line 47
    iget v6, v0, Lem8;->b:I

    .line 48
    .line 49
    int-to-float p1, p1

    .line 50
    div-float/2addr p1, v3

    .line 51
    iget v3, v0, Lem8;->e:F

    .line 52
    .line 53
    sub-float/2addr p1, v3

    .line 54
    iget v0, v0, Lem8;->d:F

    .line 55
    .line 56
    add-float/2addr v0, v4

    .line 57
    div-float/2addr p1, v0

    .line 58
    int-to-float v0, v5

    .line 59
    mul-float/2addr v0, p1

    .line 60
    float-to-int v0, v0

    .line 61
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->j0:Z

    .line 62
    .line 63
    invoke-virtual {p0, p1, v6, v0}, Landroidx/viewpager/widget/ViewPager;->m(FII)V

    .line 64
    .line 65
    .line 66
    iget-boolean p0, p0, Landroidx/viewpager/widget/ViewPager;->j0:Z

    .line 67
    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    const/4 p0, 0x1

    .line 71
    return p0

    .line 72
    :cond_3
    invoke-static {v1}, Ll0;->e(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return v2
.end method

.method public final q(F)Z
    .locals 9

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 2
    .line 3
    sub-float/2addr v0, p1

    .line 4
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    add-float/2addr p1, v0

    .line 12
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 18
    .line 19
    mul-float/2addr v1, v0

    .line 20
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    .line 21
    .line 22
    mul-float/2addr v2, v0

    .line 23
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lem8;

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    invoke-static {v3, v6}, Ldj7;->e(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lem8;

    .line 38
    .line 39
    iget v7, v5, Lem8;->b:I

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    iget v1, v5, Lem8;->e:F

    .line 44
    .line 45
    mul-float/2addr v1, v0

    .line 46
    move v5, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v5, v6

    .line 49
    :goto_0
    iget v7, v3, Lem8;->b:I

    .line 50
    .line 51
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 52
    .line 53
    invoke-virtual {v8}, Low5;->c()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    sub-int/2addr v8, v6

    .line 58
    if-eq v7, v8, :cond_1

    .line 59
    .line 60
    iget v2, v3, Lem8;->e:F

    .line 61
    .line 62
    mul-float/2addr v2, v0

    .line 63
    move v3, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v3, v6

    .line 66
    :goto_1
    cmpg-float v7, p1, v1

    .line 67
    .line 68
    if-gez v7, :cond_3

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    sub-float p1, v1, p1

    .line 73
    .line 74
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    div-float/2addr p1, v0

    .line 81
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 82
    .line 83
    .line 84
    move v4, v6

    .line 85
    :cond_2
    move p1, v1

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    cmpl-float v1, p1, v2

    .line 88
    .line 89
    if-lez v1, :cond_5

    .line 90
    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    sub-float/2addr p1, v2

    .line 94
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->h0:Landroid/widget/EdgeEffect;

    .line 95
    .line 96
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    div-float/2addr p1, v0

    .line 101
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 102
    .line 103
    .line 104
    move v4, v6

    .line 105
    :cond_4
    move p1, v2

    .line 106
    :cond_5
    :goto_2
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 107
    .line 108
    float-to-int v1, p1

    .line 109
    int-to-float v2, v1

    .line 110
    sub-float/2addr p1, v2

    .line 111
    add-float/2addr p1, v0

    .line 112
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->T:F

    .line 113
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->p(I)Z

    .line 122
    .line 123
    .line 124
    return v4
.end method

.method public final r()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->s(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final s(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 6
    .line 7
    if-eq v2, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->k(I)Lem8;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_22

    .line 22
    .line 23
    :cond_1
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    goto/16 :goto_22

    .line 28
    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto/16 :goto_22

    .line 36
    .line 37
    :cond_3
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Low5;->f(Landroidx/viewpager/widget/ViewPager;)V

    .line 40
    .line 41
    .line 42
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 43
    .line 44
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 45
    .line 46
    sub-int/2addr v4, v1

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 53
    .line 54
    invoke-virtual {v6}, Low5;->c()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    add-int/lit8 v7, v6, -0x1

    .line 59
    .line 60
    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 61
    .line 62
    add-int/2addr v8, v1

    .line 63
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->a:I

    .line 68
    .line 69
    if-ne v6, v7, :cond_35

    .line 70
    .line 71
    move v7, v5

    .line 72
    :goto_1
    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    if-ge v7, v9, :cond_5

    .line 79
    .line 80
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    check-cast v9, Lem8;

    .line 85
    .line 86
    iget v10, v9, Lem8;->b:I

    .line 87
    .line 88
    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 89
    .line 90
    if-lt v10, v11, :cond_4

    .line 91
    .line 92
    if-ne v10, v11, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    const/4 v9, 0x0

    .line 99
    :goto_2
    if-nez v9, :cond_6

    .line 100
    .line 101
    if-lez v6, :cond_6

    .line 102
    .line 103
    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 104
    .line 105
    invoke-virtual {v0, v9, v7}, Landroidx/viewpager/widget/ViewPager;->a(II)Lem8;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    :cond_6
    if-eqz v9, :cond_2b

    .line 110
    .line 111
    add-int/lit8 v11, v7, -0x1

    .line 112
    .line 113
    if-ltz v11, :cond_7

    .line 114
    .line 115
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    check-cast v12, Lem8;

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_7
    const/4 v12, 0x0

    .line 123
    :goto_3
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    const/high16 v14, 0x40000000    # 2.0f

    .line 128
    .line 129
    if-gtz v13, :cond_8

    .line 130
    .line 131
    const/16 p1, 0x0

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    goto :goto_4

    .line 135
    :cond_8
    iget v15, v9, Lem8;->d:F

    .line 136
    .line 137
    sub-float v15, v14, v15

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    int-to-float v3, v3

    .line 144
    const/16 p1, 0x0

    .line 145
    .line 146
    int-to-float v10, v13

    .line 147
    div-float/2addr v3, v10

    .line 148
    add-float/2addr v3, v15

    .line 149
    :goto_4
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 150
    .line 151
    const/4 v15, 0x1

    .line 152
    sub-int/2addr v10, v15

    .line 153
    move/from16 v16, p1

    .line 154
    .line 155
    :goto_5
    if-ltz v10, :cond_9

    .line 156
    .line 157
    cmpl-float v17, v16, v3

    .line 158
    .line 159
    if-ltz v17, :cond_c

    .line 160
    .line 161
    if-ge v10, v4, :cond_c

    .line 162
    .line 163
    if-nez v12, :cond_a

    .line 164
    .line 165
    :cond_9
    move/from16 v17, v14

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_a
    move/from16 v17, v14

    .line 169
    .line 170
    iget v14, v12, Lem8;->b:I

    .line 171
    .line 172
    if-ne v10, v14, :cond_e

    .line 173
    .line 174
    iget-boolean v14, v12, Lem8;->c:Z

    .line 175
    .line 176
    if-nez v14, :cond_e

    .line 177
    .line 178
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    iget-object v14, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 182
    .line 183
    iget-object v12, v12, Lem8;->a:Landroidx/fragment/app/o;

    .line 184
    .line 185
    invoke-virtual {v14, v12}, Low5;->a(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v11, v11, -0x1

    .line 189
    .line 190
    add-int/lit8 v7, v7, -0x1

    .line 191
    .line 192
    if-ltz v11, :cond_b

    .line 193
    .line 194
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    check-cast v12, Lem8;

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_b
    const/4 v12, 0x0

    .line 202
    goto :goto_6

    .line 203
    :cond_c
    move/from16 v17, v14

    .line 204
    .line 205
    if-eqz v12, :cond_d

    .line 206
    .line 207
    iget v14, v12, Lem8;->b:I

    .line 208
    .line 209
    if-ne v10, v14, :cond_d

    .line 210
    .line 211
    iget v12, v12, Lem8;->d:F

    .line 212
    .line 213
    add-float v16, v16, v12

    .line 214
    .line 215
    add-int/lit8 v11, v11, -0x1

    .line 216
    .line 217
    if-ltz v11, :cond_b

    .line 218
    .line 219
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    check-cast v12, Lem8;

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_d
    add-int/lit8 v12, v11, 0x1

    .line 227
    .line 228
    invoke-virtual {v0, v10, v12}, Landroidx/viewpager/widget/ViewPager;->a(II)Lem8;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    iget v12, v12, Lem8;->d:F

    .line 233
    .line 234
    add-float v16, v16, v12

    .line 235
    .line 236
    add-int/lit8 v7, v7, 0x1

    .line 237
    .line 238
    if-ltz v11, :cond_b

    .line 239
    .line 240
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    check-cast v12, Lem8;

    .line 245
    .line 246
    :cond_e
    :goto_6
    add-int/lit8 v10, v10, -0x1

    .line 247
    .line 248
    move/from16 v14, v17

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :goto_7
    iget v3, v9, Lem8;->d:F

    .line 252
    .line 253
    add-int/lit8 v4, v7, 0x1

    .line 254
    .line 255
    cmpg-float v10, v3, v17

    .line 256
    .line 257
    if-gez v10, :cond_16

    .line 258
    .line 259
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    if-ge v4, v10, :cond_f

    .line 264
    .line 265
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    check-cast v10, Lem8;

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_f
    const/4 v10, 0x0

    .line 273
    :goto_8
    if-gtz v13, :cond_10

    .line 274
    .line 275
    move/from16 v11, p1

    .line 276
    .line 277
    goto :goto_9

    .line 278
    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 279
    .line 280
    .line 281
    move-result v11

    .line 282
    int-to-float v11, v11

    .line 283
    int-to-float v12, v13

    .line 284
    div-float/2addr v11, v12

    .line 285
    add-float v11, v11, v17

    .line 286
    .line 287
    :goto_9
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 288
    .line 289
    add-int/2addr v12, v15

    .line 290
    move v13, v4

    .line 291
    :goto_a
    if-ge v12, v6, :cond_16

    .line 292
    .line 293
    cmpl-float v14, v3, v11

    .line 294
    .line 295
    if-ltz v14, :cond_13

    .line 296
    .line 297
    if-le v12, v1, :cond_13

    .line 298
    .line 299
    if-nez v10, :cond_11

    .line 300
    .line 301
    goto :goto_c

    .line 302
    :cond_11
    iget v14, v10, Lem8;->b:I

    .line 303
    .line 304
    if-ne v12, v14, :cond_15

    .line 305
    .line 306
    iget-boolean v14, v10, Lem8;->c:Z

    .line 307
    .line 308
    if-nez v14, :cond_15

    .line 309
    .line 310
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    iget-object v14, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 314
    .line 315
    iget-object v10, v10, Lem8;->a:Landroidx/fragment/app/o;

    .line 316
    .line 317
    invoke-virtual {v14, v10}, Low5;->a(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 321
    .line 322
    .line 323
    move-result v10

    .line 324
    if-ge v13, v10, :cond_12

    .line 325
    .line 326
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v10

    .line 330
    check-cast v10, Lem8;

    .line 331
    .line 332
    goto :goto_b

    .line 333
    :cond_12
    const/4 v10, 0x0

    .line 334
    goto :goto_b

    .line 335
    :cond_13
    if-eqz v10, :cond_14

    .line 336
    .line 337
    iget v14, v10, Lem8;->b:I

    .line 338
    .line 339
    if-ne v12, v14, :cond_14

    .line 340
    .line 341
    iget v10, v10, Lem8;->d:F

    .line 342
    .line 343
    add-float/2addr v3, v10

    .line 344
    add-int/lit8 v13, v13, 0x1

    .line 345
    .line 346
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    if-ge v13, v10, :cond_12

    .line 351
    .line 352
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    check-cast v10, Lem8;

    .line 357
    .line 358
    goto :goto_b

    .line 359
    :cond_14
    invoke-virtual {v0, v12, v13}, Landroidx/viewpager/widget/ViewPager;->a(II)Lem8;

    .line 360
    .line 361
    .line 362
    move-result-object v10

    .line 363
    add-int/lit8 v13, v13, 0x1

    .line 364
    .line 365
    iget v10, v10, Lem8;->d:F

    .line 366
    .line 367
    add-float/2addr v3, v10

    .line 368
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 369
    .line 370
    .line 371
    move-result v10

    .line 372
    if-ge v13, v10, :cond_12

    .line 373
    .line 374
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    check-cast v10, Lem8;

    .line 379
    .line 380
    :cond_15
    :goto_b
    add-int/lit8 v12, v12, 0x1

    .line 381
    .line 382
    goto :goto_a

    .line 383
    :cond_16
    :goto_c
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 384
    .line 385
    invoke-virtual {v1}, Low5;->c()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    if-lez v3, :cond_17

    .line 394
    .line 395
    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 396
    .line 397
    int-to-float v6, v6

    .line 398
    int-to-float v3, v3

    .line 399
    div-float/2addr v6, v3

    .line 400
    goto :goto_d

    .line 401
    :cond_17
    move/from16 v6, p1

    .line 402
    .line 403
    :goto_d
    const/high16 v3, 0x3f800000    # 1.0f

    .line 404
    .line 405
    if-eqz v2, :cond_1d

    .line 406
    .line 407
    iget v10, v2, Lem8;->b:I

    .line 408
    .line 409
    iget v11, v9, Lem8;->b:I

    .line 410
    .line 411
    if-ge v10, v11, :cond_1a

    .line 412
    .line 413
    iget v11, v2, Lem8;->e:F

    .line 414
    .line 415
    iget v2, v2, Lem8;->d:F

    .line 416
    .line 417
    add-float/2addr v11, v2

    .line 418
    add-float/2addr v11, v6

    .line 419
    add-int/2addr v10, v15

    .line 420
    move v2, v5

    .line 421
    :goto_e
    iget v12, v9, Lem8;->b:I

    .line 422
    .line 423
    if-gt v10, v12, :cond_1d

    .line 424
    .line 425
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 426
    .line 427
    .line 428
    move-result v12

    .line 429
    if-ge v2, v12, :cond_1d

    .line 430
    .line 431
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v12

    .line 435
    check-cast v12, Lem8;

    .line 436
    .line 437
    :goto_f
    iget v13, v12, Lem8;->b:I

    .line 438
    .line 439
    if-le v10, v13, :cond_18

    .line 440
    .line 441
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 442
    .line 443
    .line 444
    move-result v13

    .line 445
    sub-int/2addr v13, v15

    .line 446
    if-ge v2, v13, :cond_18

    .line 447
    .line 448
    add-int/lit8 v2, v2, 0x1

    .line 449
    .line 450
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v12

    .line 454
    check-cast v12, Lem8;

    .line 455
    .line 456
    goto :goto_f

    .line 457
    :cond_18
    :goto_10
    iget v13, v12, Lem8;->b:I

    .line 458
    .line 459
    if-ge v10, v13, :cond_19

    .line 460
    .line 461
    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 462
    .line 463
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    add-float v13, v3, v6

    .line 467
    .line 468
    add-float/2addr v11, v13

    .line 469
    add-int/lit8 v10, v10, 0x1

    .line 470
    .line 471
    goto :goto_10

    .line 472
    :cond_19
    iput v11, v12, Lem8;->e:F

    .line 473
    .line 474
    iget v12, v12, Lem8;->d:F

    .line 475
    .line 476
    add-float/2addr v12, v6

    .line 477
    add-float/2addr v11, v12

    .line 478
    add-int/lit8 v10, v10, 0x1

    .line 479
    .line 480
    goto :goto_e

    .line 481
    :cond_1a
    if-le v10, v11, :cond_1d

    .line 482
    .line 483
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 484
    .line 485
    .line 486
    move-result v11

    .line 487
    sub-int/2addr v11, v15

    .line 488
    iget v2, v2, Lem8;->e:F

    .line 489
    .line 490
    sub-int/2addr v10, v15

    .line 491
    :goto_11
    iget v12, v9, Lem8;->b:I

    .line 492
    .line 493
    if-lt v10, v12, :cond_1d

    .line 494
    .line 495
    if-ltz v11, :cond_1d

    .line 496
    .line 497
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v12

    .line 501
    check-cast v12, Lem8;

    .line 502
    .line 503
    :goto_12
    iget v13, v12, Lem8;->b:I

    .line 504
    .line 505
    if-ge v10, v13, :cond_1b

    .line 506
    .line 507
    if-lez v11, :cond_1b

    .line 508
    .line 509
    add-int/lit8 v11, v11, -0x1

    .line 510
    .line 511
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v12

    .line 515
    check-cast v12, Lem8;

    .line 516
    .line 517
    goto :goto_12

    .line 518
    :cond_1b
    :goto_13
    iget v13, v12, Lem8;->b:I

    .line 519
    .line 520
    if-le v10, v13, :cond_1c

    .line 521
    .line 522
    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 523
    .line 524
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    add-float v13, v3, v6

    .line 528
    .line 529
    sub-float/2addr v2, v13

    .line 530
    add-int/lit8 v10, v10, -0x1

    .line 531
    .line 532
    goto :goto_13

    .line 533
    :cond_1c
    iget v13, v12, Lem8;->d:F

    .line 534
    .line 535
    add-float/2addr v13, v6

    .line 536
    sub-float/2addr v2, v13

    .line 537
    iput v2, v12, Lem8;->e:F

    .line 538
    .line 539
    add-int/lit8 v10, v10, -0x1

    .line 540
    .line 541
    goto :goto_11

    .line 542
    :cond_1d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 543
    .line 544
    .line 545
    move-result v2

    .line 546
    iget v10, v9, Lem8;->e:F

    .line 547
    .line 548
    iget v11, v9, Lem8;->b:I

    .line 549
    .line 550
    add-int/lit8 v12, v11, -0x1

    .line 551
    .line 552
    if-nez v11, :cond_1e

    .line 553
    .line 554
    move v13, v10

    .line 555
    goto :goto_14

    .line 556
    :cond_1e
    const v13, -0x800001

    .line 557
    .line 558
    .line 559
    :goto_14
    iput v13, v0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 560
    .line 561
    sub-int/2addr v1, v15

    .line 562
    if-ne v11, v1, :cond_1f

    .line 563
    .line 564
    iget v11, v9, Lem8;->d:F

    .line 565
    .line 566
    add-float/2addr v11, v10

    .line 567
    sub-float/2addr v11, v3

    .line 568
    goto :goto_15

    .line 569
    :cond_1f
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 570
    .line 571
    .line 572
    :goto_15
    iput v11, v0, Landroidx/viewpager/widget/ViewPager;->I:F

    .line 573
    .line 574
    sub-int/2addr v7, v15

    .line 575
    :goto_16
    if-ltz v7, :cond_22

    .line 576
    .line 577
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v11

    .line 581
    check-cast v11, Lem8;

    .line 582
    .line 583
    :goto_17
    iget v13, v11, Lem8;->b:I

    .line 584
    .line 585
    if-le v12, v13, :cond_20

    .line 586
    .line 587
    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 588
    .line 589
    add-int/lit8 v12, v12, -0x1

    .line 590
    .line 591
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    add-float v13, v3, v6

    .line 595
    .line 596
    sub-float/2addr v10, v13

    .line 597
    goto :goto_17

    .line 598
    :cond_20
    iget v14, v11, Lem8;->d:F

    .line 599
    .line 600
    add-float/2addr v14, v6

    .line 601
    sub-float/2addr v10, v14

    .line 602
    iput v10, v11, Lem8;->e:F

    .line 603
    .line 604
    if-nez v13, :cond_21

    .line 605
    .line 606
    iput v10, v0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 607
    .line 608
    :cond_21
    add-int/lit8 v7, v7, -0x1

    .line 609
    .line 610
    add-int/lit8 v12, v12, -0x1

    .line 611
    .line 612
    goto :goto_16

    .line 613
    :cond_22
    iget v7, v9, Lem8;->e:F

    .line 614
    .line 615
    iget v10, v9, Lem8;->d:F

    .line 616
    .line 617
    add-float/2addr v7, v10

    .line 618
    add-float/2addr v7, v6

    .line 619
    iget v10, v9, Lem8;->b:I

    .line 620
    .line 621
    add-int/2addr v10, v15

    .line 622
    :goto_18
    if-ge v4, v2, :cond_25

    .line 623
    .line 624
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v11

    .line 628
    check-cast v11, Lem8;

    .line 629
    .line 630
    :goto_19
    iget v12, v11, Lem8;->b:I

    .line 631
    .line 632
    if-ge v10, v12, :cond_23

    .line 633
    .line 634
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 635
    .line 636
    add-int/lit8 v10, v10, 0x1

    .line 637
    .line 638
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 639
    .line 640
    .line 641
    add-float v12, v3, v6

    .line 642
    .line 643
    add-float/2addr v7, v12

    .line 644
    goto :goto_19

    .line 645
    :cond_23
    if-ne v12, v1, :cond_24

    .line 646
    .line 647
    iget v12, v11, Lem8;->d:F

    .line 648
    .line 649
    add-float/2addr v12, v7

    .line 650
    sub-float/2addr v12, v3

    .line 651
    iput v12, v0, Landroidx/viewpager/widget/ViewPager;->I:F

    .line 652
    .line 653
    :cond_24
    iput v7, v11, Lem8;->e:F

    .line 654
    .line 655
    iget v11, v11, Lem8;->d:F

    .line 656
    .line 657
    add-float/2addr v11, v6

    .line 658
    add-float/2addr v7, v11

    .line 659
    add-int/lit8 v4, v4, 0x1

    .line 660
    .line 661
    add-int/lit8 v10, v10, 0x1

    .line 662
    .line 663
    goto :goto_18

    .line 664
    :cond_25
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 665
    .line 666
    iget-object v2, v9, Lem8;->a:Landroidx/fragment/app/o;

    .line 667
    .line 668
    check-cast v1, Landroidx/fragment/app/b0;

    .line 669
    .line 670
    iget-object v3, v1, Landroidx/fragment/app/b0;->b:Lur3;

    .line 671
    .line 672
    iget v4, v1, Landroidx/fragment/app/b0;->c:I

    .line 673
    .line 674
    iget-object v6, v1, Landroidx/fragment/app/b0;->e:Landroidx/fragment/app/o;

    .line 675
    .line 676
    if-eq v2, v6, :cond_2c

    .line 677
    .line 678
    if-eqz v6, :cond_28

    .line 679
    .line 680
    invoke-virtual {v6, v5}, Landroidx/fragment/app/o;->setMenuVisibility(Z)V

    .line 681
    .line 682
    .line 683
    if-ne v4, v15, :cond_27

    .line 684
    .line 685
    iget-object v6, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 686
    .line 687
    if-nez v6, :cond_26

    .line 688
    .line 689
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 690
    .line 691
    .line 692
    new-instance v6, Landroidx/fragment/app/a;

    .line 693
    .line 694
    invoke-direct {v6, v3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 695
    .line 696
    .line 697
    iput-object v6, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 698
    .line 699
    :cond_26
    iget-object v6, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 700
    .line 701
    iget-object v7, v1, Landroidx/fragment/app/b0;->e:Landroidx/fragment/app/o;

    .line 702
    .line 703
    sget-object v8, Lst4;->d:Lst4;

    .line 704
    .line 705
    invoke-virtual {v6, v7, v8}, Landroidx/fragment/app/a;->k(Landroidx/fragment/app/o;Lst4;)V

    .line 706
    .line 707
    .line 708
    goto :goto_1a

    .line 709
    :cond_27
    iget-object v6, v1, Landroidx/fragment/app/b0;->e:Landroidx/fragment/app/o;

    .line 710
    .line 711
    invoke-virtual {v6, v5}, Landroidx/fragment/app/o;->setUserVisibleHint(Z)V

    .line 712
    .line 713
    .line 714
    :cond_28
    :goto_1a
    invoke-virtual {v2, v15}, Landroidx/fragment/app/o;->setMenuVisibility(Z)V

    .line 715
    .line 716
    .line 717
    if-ne v4, v15, :cond_2a

    .line 718
    .line 719
    iget-object v4, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 720
    .line 721
    if-nez v4, :cond_29

    .line 722
    .line 723
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    new-instance v4, Landroidx/fragment/app/a;

    .line 727
    .line 728
    invoke-direct {v4, v3}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/z;)V

    .line 729
    .line 730
    .line 731
    iput-object v4, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 732
    .line 733
    :cond_29
    iget-object v3, v1, Landroidx/fragment/app/b0;->d:Landroidx/fragment/app/a;

    .line 734
    .line 735
    sget-object v4, Lst4;->e:Lst4;

    .line 736
    .line 737
    invoke-virtual {v3, v2, v4}, Landroidx/fragment/app/a;->k(Landroidx/fragment/app/o;Lst4;)V

    .line 738
    .line 739
    .line 740
    goto :goto_1b

    .line 741
    :cond_2a
    invoke-virtual {v2, v15}, Landroidx/fragment/app/o;->setUserVisibleHint(Z)V

    .line 742
    .line 743
    .line 744
    :goto_1b
    iput-object v2, v1, Landroidx/fragment/app/b0;->e:Landroidx/fragment/app/o;

    .line 745
    .line 746
    goto :goto_1c

    .line 747
    :cond_2b
    const/16 p1, 0x0

    .line 748
    .line 749
    :cond_2c
    :goto_1c
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 750
    .line 751
    invoke-virtual {v1}, Low5;->b()V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    move v2, v5

    .line 759
    :goto_1d
    if-ge v2, v1, :cond_2e

    .line 760
    .line 761
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 766
    .line 767
    .line 768
    move-result-object v4

    .line 769
    check-cast v4, Lfm8;

    .line 770
    .line 771
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    iget-boolean v6, v4, Lfm8;->a:Z

    .line 775
    .line 776
    if-nez v6, :cond_2d

    .line 777
    .line 778
    iget v6, v4, Lfm8;->c:F

    .line 779
    .line 780
    cmpl-float v6, v6, p1

    .line 781
    .line 782
    if-nez v6, :cond_2d

    .line 783
    .line 784
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->i(Landroid/view/View;)Lem8;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    if-eqz v3, :cond_2d

    .line 789
    .line 790
    iget v3, v3, Lem8;->d:F

    .line 791
    .line 792
    iput v3, v4, Lfm8;->c:F

    .line 793
    .line 794
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 795
    .line 796
    goto :goto_1d

    .line 797
    :cond_2e
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    if-eqz v1, :cond_34

    .line 802
    .line 803
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 804
    .line 805
    .line 806
    move-result-object v1

    .line 807
    if-eqz v1, :cond_31

    .line 808
    .line 809
    :goto_1e
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    if-eq v2, v0, :cond_30

    .line 814
    .line 815
    if-eqz v2, :cond_31

    .line 816
    .line 817
    instance-of v1, v2, Landroid/view/View;

    .line 818
    .line 819
    if-nez v1, :cond_2f

    .line 820
    .line 821
    goto :goto_1f

    .line 822
    :cond_2f
    move-object v1, v2

    .line 823
    check-cast v1, Landroid/view/View;

    .line 824
    .line 825
    goto :goto_1e

    .line 826
    :cond_30
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->i(Landroid/view/View;)Lem8;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    goto :goto_20

    .line 831
    :cond_31
    :goto_1f
    const/4 v3, 0x0

    .line 832
    :goto_20
    if-eqz v3, :cond_32

    .line 833
    .line 834
    iget v1, v3, Lem8;->b:I

    .line 835
    .line 836
    iget v2, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 837
    .line 838
    if-eq v1, v2, :cond_34

    .line 839
    .line 840
    :cond_32
    :goto_21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 841
    .line 842
    .line 843
    move-result v1

    .line 844
    if-ge v5, v1, :cond_34

    .line 845
    .line 846
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->i(Landroid/view/View;)Lem8;

    .line 851
    .line 852
    .line 853
    move-result-object v2

    .line 854
    if-eqz v2, :cond_33

    .line 855
    .line 856
    iget v2, v2, Lem8;->b:I

    .line 857
    .line 858
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 859
    .line 860
    if-ne v2, v3, :cond_33

    .line 861
    .line 862
    const/4 v2, 0x2

    .line 863
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    if-eqz v1, :cond_33

    .line 868
    .line 869
    goto :goto_22

    .line 870
    :cond_33
    add-int/lit8 v5, v5, 0x1

    .line 871
    .line 872
    goto :goto_21

    .line 873
    :cond_34
    :goto_22
    return-void

    .line 874
    :cond_35
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    goto :goto_23

    .line 887
    :catch_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    :goto_23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 896
    .line 897
    const-string v3, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    .line 898
    .line 899
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->a:I

    .line 903
    .line 904
    const-string v4, ", found: "

    .line 905
    .line 906
    const-string v5, " Pager id: "

    .line 907
    .line 908
    invoke-static {v2, v3, v4, v6, v5}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    const-string v1, " Pager class: "

    .line 915
    .line 916
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    const-string v1, " Problematic adapter: "

    .line 927
    .line 928
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 932
    .line 933
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    invoke-static {v2, v0}, Lf6;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 938
    .line 939
    .line 940
    return-void
.end method

.method public setAdapter(Low5;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 12
    .line 13
    invoke-virtual {v1, p0}, Low5;->f(Landroidx/viewpager/widget/ViewPager;)V

    .line 14
    .line 15
    .line 16
    move v1, v3

    .line 17
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v1, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lem8;

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 30
    .line 31
    iget v6, v4, Lem8;->b:I

    .line 32
    .line 33
    iget-object v4, v4, Lem8;->a:Landroidx/fragment/app/o;

    .line 34
    .line 35
    invoke-virtual {v5, v4}, Low5;->a(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 42
    .line 43
    invoke-virtual {v1}, Low5;->b()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    move v0, v3

    .line 50
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ge v0, v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lfm8;

    .line 65
    .line 66
    iget-boolean v1, v1, Lfm8;->a:Z

    .line 67
    .line 68
    if-nez v1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    :cond_1
    add-int/2addr v0, v2

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 78
    .line 79
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p0

    .line 86
    :cond_3
    :goto_2
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 87
    .line 88
    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->a:I

    .line 89
    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->r:Lhm8;

    .line 93
    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    new-instance v0, Lhm8;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lhm8;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->r:Lhm8;

    .line 102
    .line 103
    :cond_4
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 104
    .line 105
    monitor-enter v0

    .line 106
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 108
    .line 109
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 110
    .line 111
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 112
    .line 113
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 114
    .line 115
    invoke-virtual {v1}, Low5;->c()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->a:I

    .line 120
    .line 121
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->k:I

    .line 122
    .line 123
    if-ltz v1, :cond_5

    .line 124
    .line 125
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->k:I

    .line 131
    .line 132
    invoke-virtual {p0, v0, v3, v3, v2}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 133
    .line 134
    .line 135
    const/4 v0, -0x1

    .line 136
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->k:I

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    if-nez v0, :cond_6

    .line 140
    .line 141
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    throw p0

    .line 152
    :cond_7
    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->n0:Ljava/util/ArrayList;

    .line 153
    .line 154
    if-eqz v0, :cond_9

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_9

    .line 161
    .line 162
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->n0:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    :goto_4
    if-ge v3, v0, :cond_9

    .line 169
    .line 170
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->n0:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Lwv7;

    .line 177
    .line 178
    iget-object v2, v1, Lwv7;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 179
    .line 180
    iget-object v4, v2, Lcom/google/android/material/tabs/TabLayout;->j0:Landroidx/viewpager/widget/ViewPager;

    .line 181
    .line 182
    if-ne v4, p0, :cond_8

    .line 183
    .line 184
    iget-boolean v1, v1, Lwv7;->a:Z

    .line 185
    .line 186
    invoke-virtual {v2, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->l(Low5;Z)V

    .line 187
    .line 188
    .line 189
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_9
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->M:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 5
    .line 6
    xor-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->w(IIZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v2, "Requested offscreen page limit "

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " too small; defaulting to 1"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "ViewPager"

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move p1, v0

    .line 29
    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lgm8;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->m0:Lgm8;

    .line 2
    .line 3
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 2
    .line 3
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->t(IIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setScrollState(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->p0:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->p0:I

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->m0:Lgm8;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lgm8;->a(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_3

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->l0:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lgm8;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {v2, p1}, Lgm8;->a(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    :goto_1
    return-void
.end method

.method public final t(IIII)V
    .locals 1

    .line 1
    if-lez p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    mul-int/2addr p2, p0

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sub-int/2addr p1, v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sub-int/2addr p1, v0

    .line 44
    add-int/2addr p1, p3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    sub-int/2addr p2, p3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    sub-int/2addr p2, p3

    .line 55
    add-int/2addr p2, p4

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    int-to-float p3, p3

    .line 61
    int-to-float p2, p2

    .line 62
    div-float/2addr p3, p2

    .line 63
    int-to-float p1, p1

    .line 64
    mul-float/2addr p3, p1

    .line 65
    float-to-int p1, p3

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->k(I)Lem8;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    iget p2, p2, Lem8;->e:F

    .line 83
    .line 84
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    .line 85
    .line 86
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/4 p2, 0x0

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    sub-int/2addr p1, p3

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    sub-int/2addr p1, p3

    .line 102
    int-to-float p1, p1

    .line 103
    mul-float/2addr p2, p1

    .line 104
    float-to-int p1, p2

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eq p1, p2, :cond_3

    .line 110
    .line 111
    const/4 p2, 0x0

    .line 112
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void
.end method

.method public final u()Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->a0:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->O:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->P:Z

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->b0:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->h0:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->g0:Landroid/widget/EdgeEffect;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->h0:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return v0

    .line 47
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method public final v(IIZZ)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->k(I)Lem8;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->H:F

    .line 14
    .line 15
    iget v0, v0, Lem8;->e:F

    .line 16
    .line 17
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->I:F

    .line 18
    .line 19
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    mul-float/2addr v0, v2

    .line 28
    float-to-int v0, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    if-eqz p3, :cond_7

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_1
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 45
    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/widget/Scroller;->isFinished()Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-nez p3, :cond_3

    .line 53
    .line 54
    iget-boolean p3, p0, Landroidx/viewpager/widget/ViewPager;->q:Z

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 57
    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v2}, Landroid/widget/Scroller;->getStartX()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    :goto_1
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 75
    .line 76
    .line 77
    :goto_2
    move v3, p3

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    goto :goto_2

    .line 84
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    sub-int v5, v0, v3

    .line 89
    .line 90
    rsub-int/lit8 v6, v4, 0x0

    .line 91
    .line 92
    if-nez v5, :cond_4

    .line 93
    .line 94
    if-nez v6, :cond_4

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->r()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_4
    const/4 p3, 0x1

    .line 107
    invoke-direct {p0, p3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 108
    .line 109
    .line 110
    const/4 p3, 0x2

    .line 111
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    div-int/lit8 v0, p3, 0x2

    .line 119
    .line 120
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    int-to-float v2, v2

    .line 125
    const/high16 v7, 0x3f800000    # 1.0f

    .line 126
    .line 127
    mul-float/2addr v2, v7

    .line 128
    int-to-float p3, p3

    .line 129
    div-float/2addr v2, p3

    .line 130
    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    int-to-float v0, v0

    .line 135
    const/high16 v8, 0x3f000000    # 0.5f

    .line 136
    .line 137
    sub-float/2addr v2, v8

    .line 138
    const v8, 0x3ef1463b

    .line 139
    .line 140
    .line 141
    mul-float/2addr v2, v8

    .line 142
    float-to-double v8, v2

    .line 143
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 144
    .line 145
    .line 146
    move-result-wide v8

    .line 147
    double-to-float v2, v8

    .line 148
    mul-float/2addr v2, v0

    .line 149
    add-float/2addr v2, v0

    .line 150
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-lez p2, :cond_5

    .line 155
    .line 156
    int-to-float p2, p2

    .line 157
    div-float/2addr v2, p2

    .line 158
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 163
    .line 164
    mul-float/2addr p2, p3

    .line 165
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 166
    .line 167
    .line 168
    move-result p2

    .line 169
    mul-int/lit8 p2, p2, 0x4

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_5
    iget-object p2, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    mul-float/2addr p3, v7

    .line 178
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    int-to-float p2, p2

    .line 183
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->t:I

    .line 184
    .line 185
    int-to-float v0, v0

    .line 186
    add-float/2addr p3, v0

    .line 187
    div-float/2addr p2, p3

    .line 188
    add-float/2addr p2, v7

    .line 189
    const/high16 p3, 0x42c80000    # 100.0f

    .line 190
    .line 191
    mul-float/2addr p2, p3

    .line 192
    float-to-int p2, p2

    .line 193
    :goto_4
    const/16 p3, 0x258

    .line 194
    .line 195
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->q:Z

    .line 200
    .line 201
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->p:Landroid/widget/Scroller;

    .line 202
    .line 203
    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 204
    .line 205
    .line 206
    sget-object p2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 209
    .line 210
    .line 211
    :goto_5
    if-eqz p4, :cond_6

    .line 212
    .line 213
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->g(I)V

    .line 214
    .line 215
    .line 216
    :cond_6
    return-void

    .line 217
    :cond_7
    if-eqz p4, :cond_8

    .line 218
    .line 219
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->g(I)V

    .line 220
    .line 221
    .line 222
    :cond_8
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->e(Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->p(I)Z

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/viewpager/widget/ViewPager;->x:Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final w(IIZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    invoke-virtual {v0}, Low5;->c()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    iget p4, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 18
    .line 19
    if-ne p4, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 p4, 0x1

    .line 32
    if-gez p1, :cond_2

    .line 33
    .line 34
    move p1, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 37
    .line 38
    invoke-virtual {v2}, Low5;->c()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lt p1, v2, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e:Low5;

    .line 45
    .line 46
    invoke-virtual {p1}, Low5;->c()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sub-int/2addr p1, p4

    .line 51
    :cond_3
    :goto_0
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->N:I

    .line 52
    .line 53
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 54
    .line 55
    add-int v4, v3, v2

    .line 56
    .line 57
    if-gt p1, v4, :cond_4

    .line 58
    .line 59
    sub-int/2addr v3, v2

    .line 60
    if-ge p1, v3, :cond_5

    .line 61
    .line 62
    :cond_4
    move v2, v1

    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ge v2, v3, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lem8;

    .line 74
    .line 75
    iput-boolean p4, v3, Lem8;->c:Z

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 81
    .line 82
    if-eq v0, p1, :cond_6

    .line 83
    .line 84
    move v1, p4

    .line 85
    :cond_6
    iget-boolean p4, p0, Landroidx/viewpager/widget/ViewPager;->i0:Z

    .line 86
    .line 87
    if-eqz p4, :cond_8

    .line 88
    .line 89
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 90
    .line 91
    if-eqz v1, :cond_7

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->g(I)V

    .line 94
    .line 95
    .line 96
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->s(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/viewpager/widget/ViewPager;->v(IIZZ)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_9
    :goto_2
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
