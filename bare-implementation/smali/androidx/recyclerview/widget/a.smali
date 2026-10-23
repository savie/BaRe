.class public abstract Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public G:I

.field public a:Lj61;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Ll39;

.field public final d:Ll39;

.field public e:Lav4;

.field public f:Z

.field public k:Z

.field public final n:Z

.field public final p:Z

.field public q:I

.field public r:Z

.field public t:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz28;

    .line 5
    .line 6
    const/16 v1, 0xe

    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lz28;-><init>(Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljq6;

    .line 12
    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    invoke-direct {v1, p0, v2}, Ljq6;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ll39;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ll39;-><init>(Llk8;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Landroidx/recyclerview/widget/a;->c:Ll39;

    .line 24
    .line 25
    new-instance v0, Ll39;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ll39;-><init>(Llk8;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->d:Ll39;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroidx/recyclerview/widget/a;->f:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Landroidx/recyclerview/widget/a;->k:Z

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroidx/recyclerview/widget/a;->n:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Landroidx/recyclerview/widget/a;->p:Z

    .line 41
    .line 42
    return-void
.end method

.method public static H(ZIIII)I
    .locals 4

    .line 1
    sub-int/2addr p1, p3

    .line 2
    const/4 p3, 0x0

    .line 3
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, -0x2

    .line 8
    const/4 v1, -0x1

    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    const/high16 v3, 0x40000000    # 2.0f

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    if-ltz p4, :cond_0

    .line 16
    .line 17
    :goto_0
    move p2, v3

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    if-ne p4, v1, :cond_1

    .line 20
    .line 21
    if-eq p2, v2, :cond_4

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    if-eq p2, v3, :cond_4

    .line 26
    .line 27
    :cond_1
    move p2, p3

    .line 28
    move p4, p2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    if-ltz p4, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    if-ne p4, v1, :cond_5

    .line 34
    .line 35
    :cond_4
    move p4, p1

    .line 36
    goto :goto_2

    .line 37
    :cond_5
    if-ne p4, v0, :cond_1

    .line 38
    .line 39
    if-eq p2, v2, :cond_7

    .line 40
    .line 41
    if-ne p2, v3, :cond_6

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_6
    move p4, p1

    .line 45
    move p2, p3

    .line 46
    goto :goto_2

    .line 47
    :cond_7
    :goto_1
    move p4, p1

    .line 48
    move p2, v2

    .line 49
    :goto_2
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public static J(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lqg6;

    .line 10
    .line 11
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 14
    .line 15
    add-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public static L(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lqg6;

    .line 10
    .line 11
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    sub-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public static M(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqg6;

    .line 6
    .line 7
    iget-object v0, v0, Lqg6;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    add-int/2addr p0, v1

    .line 16
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 17
    .line 18
    add-int/2addr p0, v0

    .line 19
    return p0
.end method

.method public static N(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqg6;

    .line 6
    .line 7
    iget-object v0, v0, Lqg6;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    add-int/2addr p0, v1

    .line 16
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 17
    .line 18
    add-int/2addr p0, v0

    .line 19
    return p0
.end method

.method public static O(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lqg6;

    .line 10
    .line 11
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    add-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public static P(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lqg6;

    .line 10
    .line 11
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    sub-int/2addr v0, p0

    .line 16
    return v0
.end method

.method public static R(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lqg6;

    .line 6
    .line 7
    iget-object p0, p0, Lqg6;->a:Lfh6;

    .line 8
    .line 9
    invoke-virtual {p0}, Lfh6;->c()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static S(Landroid/content/Context;Landroid/util/AttributeSet;II)Lpg6;
    .locals 2

    .line 1
    new-instance v0, Lpg6;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lee6;->a:[I

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    iput p3, v0, Lpg6;->a:I

    .line 19
    .line 20
    const/16 p3, 0xa

    .line 21
    .line 22
    invoke-virtual {p0, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, v0, Lpg6;->b:I

    .line 27
    .line 28
    const/16 p2, 0x9

    .line 29
    .line 30
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput-boolean p2, v0, Lpg6;->c:Z

    .line 35
    .line 36
    const/16 p2, 0xb

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput-boolean p1, v0, Lpg6;->d:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public static X(III)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez p2, :cond_0

    .line 11
    .line 12
    if-eq p0, p2, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/high16 p2, -0x80000000

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v0, p2, :cond_4

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    const/high16 p2, 0x40000000    # 2.0f

    .line 23
    .line 24
    if-eq v0, p2, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    if-ne p1, p0, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    return v1

    .line 31
    :cond_3
    return v2

    .line 32
    :cond_4
    if-lt p1, p0, :cond_5

    .line 33
    .line 34
    return v2

    .line 35
    :cond_5
    return v1
.end method

.method public static Y(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqg6;

    .line 6
    .line 7
    iget-object v1, v0, Lqg6;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    add-int/2addr p1, v2

    .line 12
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 13
    .line 14
    add-int/2addr p1, v2

    .line 15
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    add-int/2addr p2, v2

    .line 18
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    .line 20
    add-int/2addr p2, v2

    .line 21
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    sub-int/2addr p3, v2

    .line 24
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 25
    .line 26
    sub-int/2addr p3, v2

    .line 27
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    sub-int/2addr p4, v1

    .line 30
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 31
    .line 32
    sub-int/2addr p4, v0

    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static r(III)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/high16 v1, 0x40000000    # 2.0f

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    :cond_0
    return p0

    .line 22
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method


# virtual methods
.method public final A(Lvg6;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lfh6;->p()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "ignoring view "

    .line 30
    .line 31
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "RecyclerView"

    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v2}, Lfh6;->g()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2}, Lfh6;->i()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_2

    .line 58
    .line 59
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 62
    .line 63
    iget-boolean v3, v3, Lhg6;->b:Z

    .line 64
    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lj61;->j(I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {p1, v2}, Lvg6;->j(Lfh6;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Lj61;->c(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lvg6;->k(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    .line 95
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Lla;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lla;->e(Lfh6;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    return-void
.end method

.method public A0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sub-int/2addr v2, v3

    .line 16
    iget v3, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    sub-int/2addr v3, v4

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget v5, p3, Landroid/graphics/Rect;->left:I

    .line 28
    .line 29
    add-int/2addr v4, v5

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-int/2addr v4, v5

    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget v6, p3, Landroid/graphics/Rect;->top:I

    .line 40
    .line 41
    add-int/2addr v5, v6

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    sub-int/2addr v5, p2

    .line 47
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    add-int/2addr p2, v4

    .line 52
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    add-int/2addr p3, v5

    .line 57
    sub-int/2addr v4, v0

    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    sub-int/2addr v5, v1

    .line 64
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    sub-int/2addr p2, v2

    .line 69
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    sub-int/2addr p3, v3

    .line 74
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const/4 v7, 0x1

    .line 85
    if-ne v3, v7, :cond_1

    .line 86
    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    if-eqz v6, :cond_2

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    :goto_0
    move v2, v6

    .line 103
    :goto_1
    if-eqz v1, :cond_3

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    :goto_2
    filled-new-array {v2, v1}, [I

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    aget p3, p2, v0

    .line 115
    .line 116
    aget p2, p2, v7

    .line 117
    .line 118
    if-eqz p5, :cond_5

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p5

    .line 124
    if-nez p5, :cond_4

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    iget v3, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 136
    .line 137
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    sub-int/2addr v3, v4

    .line 142
    iget v4, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    sub-int/2addr v4, v5

    .line 149
    iget-object v5, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 150
    .line 151
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->q:Landroid/graphics/Rect;

    .line 152
    .line 153
    invoke-virtual {p0, v5, p5}, Landroidx/recyclerview/widget/a;->K(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    iget p0, v5, Landroid/graphics/Rect;->left:I

    .line 157
    .line 158
    sub-int/2addr p0, p3

    .line 159
    if-ge p0, v3, :cond_6

    .line 160
    .line 161
    iget p0, v5, Landroid/graphics/Rect;->right:I

    .line 162
    .line 163
    sub-int/2addr p0, p3

    .line 164
    if-le p0, v1, :cond_6

    .line 165
    .line 166
    iget p0, v5, Landroid/graphics/Rect;->top:I

    .line 167
    .line 168
    sub-int/2addr p0, p2

    .line 169
    if-ge p0, v4, :cond_6

    .line 170
    .line 171
    iget p0, v5, Landroid/graphics/Rect;->bottom:I

    .line 172
    .line 173
    sub-int/2addr p0, p2

    .line 174
    if-gt p0, v2, :cond_5

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    if-nez p3, :cond_7

    .line 178
    .line 179
    if-eqz p2, :cond_6

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    :goto_3
    return v0

    .line 183
    :cond_7
    :goto_4
    if-eqz p4, :cond_8

    .line 184
    .line 185
    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 186
    .line 187
    .line 188
    return v7

    .line 189
    :cond_8
    invoke-virtual {p1, p3, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->h0(IIZ)V

    .line 190
    .line 191
    .line 192
    return v7
.end method

.method public B(I)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v3}, Lfh6;->c()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ne v4, p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v3}, Lfh6;->p()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 34
    .line 35
    iget-boolean v4, v4, Lbh6;->g:Z

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Lfh6;->i()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    :cond_1
    return-object v2

    .line 46
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public final B0()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public abstract C()Lqg6;
.end method

.method public abstract C0(ILvg6;Lbh6;)I
.end method

.method public D(Landroid/content/Context;Landroid/util/AttributeSet;)Lqg6;
    .locals 0

    .line 1
    new-instance p0, Lqg6;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lqg6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public abstract D0(I)V
.end method

.method public E(Landroid/view/ViewGroup$LayoutParams;)Lqg6;
    .locals 0

    .line 1
    instance-of p0, p1, Lqg6;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lqg6;

    .line 6
    .line 7
    check-cast p1, Lqg6;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lqg6;-><init>(Lqg6;)V

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-instance p0, Lqg6;

    .line 18
    .line 19
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lqg6;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance p0, Lqg6;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lqg6;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public abstract E0(ILvg6;Lbh6;)I
.end method

.method public final F(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lj61;->d(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public final F0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/a;->G0(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final G()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lj61;->e()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final G0(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/a;->t:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->W0:Z

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iput v0, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 21
    .line 22
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 27
    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Landroidx/recyclerview/widget/a;->x:I

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->W0:Z

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iput v0, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public H0(Landroid/graphics/Rect;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/2addr v1, v0

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, p1

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr p1, v1

    .line 29
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    sget-object v2, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getMinimumWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/a;->r(III)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/a;->r(III)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public I(Lvg6;Lbh6;)I
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->o()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 19
    .line 20
    invoke-virtual {p0}, Lhg6;->b()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public final I0(II)V
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
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->p(II)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/high16 v1, -0x80000000

    .line 14
    .line 15
    const v2, 0x7fffffff

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v2

    .line 20
    move v5, v3

    .line 21
    move v2, v1

    .line 22
    move v3, v4

    .line 23
    :goto_0
    if-ge v5, v0, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    iget-object v7, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->q:Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-virtual {p0, v7, v6}, Landroidx/recyclerview/widget/a;->K(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    iget v6, v7, Landroid/graphics/Rect;->left:I

    .line 37
    .line 38
    if-ge v6, v3, :cond_1

    .line 39
    .line 40
    move v3, v6

    .line 41
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    .line 42
    .line 43
    if-le v6, v1, :cond_2

    .line 44
    .line 45
    move v1, v6

    .line 46
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 47
    .line 48
    if-ge v6, v4, :cond_3

    .line 49
    .line 50
    move v4, v6

    .line 51
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    if-le v6, v2, :cond_4

    .line 54
    .line 55
    move v2, v6

    .line 56
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->q:Landroid/graphics/Rect;

    .line 62
    .line 63
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->q:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/a;->H0(Landroid/graphics/Rect;II)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final J0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 10
    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 31
    .line 32
    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 33
    .line 34
    iput p1, p0, Landroidx/recyclerview/widget/a;->t:I

    .line 35
    .line 36
    iput p1, p0, Landroidx/recyclerview/widget/a;->x:I

    .line 37
    .line 38
    return-void
.end method

.method public K(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 5

    .line 1
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->S0:Z

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqg6;

    .line 8
    .line 9
    iget-object v0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 19
    .line 20
    sub-int/2addr v1, v2

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    sub-int/2addr v2, v3

    .line 28
    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 29
    .line 30
    sub-int/2addr v2, v3

    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 36
    .line 37
    add-int/2addr v3, v4

    .line 38
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 39
    .line 40
    add-int/2addr v3, v4

    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    add-int/2addr p2, v0

    .line 48
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 49
    .line 50
    add-int/2addr p2, p0

    .line 51
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method final K0(Landroid/view/View;IILqg6;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/recyclerview/widget/a;->n:Z

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 16
    .line 17
    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/a;->X(III)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 28
    .line 29
    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/a;->X(III)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 39
    return p0
.end method

.method public L0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final M0(Landroid/view/View;IILqg6;)Z
    .locals 1

    .line 1
    iget-boolean p0, p0, Landroidx/recyclerview/widget/a;->n:Z

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 10
    .line 11
    invoke-static {p0, p2, v0}, Landroidx/recyclerview/widget/a;->X(III)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    .line 23
    invoke-static {p0, p3, p1}, Landroidx/recyclerview/widget/a;->X(III)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return p0

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0
.end method

.method public abstract N0(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method

.method public final O0(Lav4;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->e:Lav4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-boolean v1, v0, Lav4;->e:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lav4;->h()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->e:Lav4;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->u0:Leh6;

    .line 19
    .line 20
    iget-object v2, v1, Leh6;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, v1, Leh6;->c:Landroid/widget/OverScroller;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p1, Lav4;->h:Z

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "An instance of "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " was started more than once. Each instance of"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, " is intended to only be used once. You should create a new instance for each use."

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v2, "RecyclerView"

    .line 78
    .line 79
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_1
    iput-object v0, p1, Lav4;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    iput-object p0, p1, Lav4;->c:Landroidx/recyclerview/widget/a;

    .line 85
    .line 86
    iget p0, p1, Lav4;->a:I

    .line 87
    .line 88
    const/4 v1, -0x1

    .line 89
    if-eq p0, v1, :cond_2

    .line 90
    .line 91
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 92
    .line 93
    iput p0, v1, Lbh6;->a:I

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p1, Lav4;->e:Z

    .line 97
    .line 98
    iput-boolean v1, p1, Lav4;->d:Z

    .line 99
    .line 100
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/a;->B(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iput-object p0, p1, Lav4;->f:Landroid/view/View;

    .line 107
    .line 108
    iget-object p0, p1, Lav4;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    .line 110
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->u0:Leh6;

    .line 111
    .line 112
    invoke-virtual {p0}, Leh6;->b()V

    .line 113
    .line 114
    .line 115
    iput-boolean v1, p1, Lav4;->h:Z

    .line 116
    .line 117
    return-void

    .line 118
    :cond_2
    const-string p0, "Invalid target position"

    .line 119
    .line 120
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public P0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final Q()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lhg6;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lhg6;->b()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public T(Lvg6;Lbh6;)I
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->p()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 19
    .line 20
    invoke-virtual {p0}, Lhg6;->b()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 26
    return p0
.end method

.method public final U(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqg6;

    .line 6
    .line 7
    iget-object v0, v0, Lqg6;->b:Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    neg-int v1, v1

    .line 12
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 13
    .line 14
    neg-int v2, v2

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    add-int/2addr v3, v4

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    add-int/2addr v4, v0

    .line 29
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->t:Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 56
    .line 57
    .line 58
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 59
    .line 60
    float-to-double v0, v0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    double-to-int v0, v0

    .line 66
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 67
    .line 68
    float-to-double v1, v1

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    double-to-int v1, v1

    .line 74
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 75
    .line 76
    float-to-double v2, v2

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    double-to-int v2, v2

    .line 82
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 83
    .line 84
    float-to-double v3, p0

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    double-to-int p0, v3

    .line 90
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    .line 92
    .line 93
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public abstract V()Z
.end method

.method public W()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public Z(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 6
    .line 7
    invoke-virtual {v0}, Lj61;->e()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lj61;->d(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public a0(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 6
    .line 7
    invoke-virtual {v0}, Lj61;->e()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lj61;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Lj61;->d(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public b0()V
    .locals 0

    .line 1
    return-void
.end method

.method public c0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract d0(Landroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public e0(Landroid/view/View;ILvg6;Lbh6;)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public f0(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 48
    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0}, Lhg6;->b()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_1
    return-void
.end method

.method public g0(Lvg6;Lbh6;Lm6;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/high16 v2, 0x4000000

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/16 v0, 0x2000

    .line 22
    .line 23
    invoke-virtual {p3, v0}, Lm6;->a(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v3}, Lm6;->o(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, v2, v3}, Lm6;->g(IZ)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    :cond_2
    const/16 v0, 0x1000

    .line 49
    .line 50
    invoke-virtual {p3, v0}, Lm6;->a(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v3}, Lm6;->o(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v2, v3}, Lm6;->g(IZ)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/a;->T(Lvg6;Lbh6;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/a;->I(Lvg6;Lbh6;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    const/4 p1, 0x0

    .line 68
    invoke-static {v0, p0, p1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iget-object p1, p3, Lm6;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final getPaddingBottom()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final getPaddingEnd()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getPaddingLeft()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final getPaddingRight()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public final getPaddingStart()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ldl8;->a:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getPaddingTop()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public h0(Lvg6;Lbh6;Landroid/view/View;Lm6;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p3}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, p2

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->o()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-static {p3}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move p0, p2

    .line 26
    :goto_1
    const/4 p3, 0x1

    .line 27
    invoke-static {p2, p1, p3, p0, p3}, Lom5;->e(ZIIII)Lom5;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p4, p0}, Lm6;->j(Lom5;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final i0(Landroid/view/View;Lm6;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lfh6;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 14
    .line 15
    iget-object v0, v0, Lfh6;->a:Landroid/view/View;

    .line 16
    .line 17
    iget-object v1, v1, Lj61;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->x0:Lbh6;

    .line 30
    .line 31
    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/a;->h0(Lvg6;Lbh6;Landroid/view/View;Lm6;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public j0(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public k0()V
    .locals 0

    .line 1
    return-void
.end method

.method public final l(Landroid/view/View;IZ)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez p3, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lfh6;->i()Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->k:Lla;

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Lla;->e(Lfh6;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->k:Lla;

    .line 26
    .line 27
    iget-object p3, p3, Lla;->a:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p3, Ldg7;

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lrl8;

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lrl8;->a()Lrl8;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p3, v0, v2}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    iget p3, v2, Lrl8;->a:I

    .line 47
    .line 48
    or-int/2addr p3, v1

    .line 49
    iput p3, v2, Lrl8;->a:I

    .line 50
    .line 51
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Lqg6;

    .line 56
    .line 57
    invoke-virtual {v0}, Lfh6;->q()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const-string v3, "RecyclerView"

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    if-nez v2, :cond_d

    .line 65
    .line 66
    invoke-virtual {v0}, Lfh6;->j()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v5, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 79
    .line 80
    iget-object v6, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 81
    .line 82
    const/4 v7, -0x1

    .line 83
    if-ne v2, v5, :cond_b

    .line 84
    .line 85
    iget-object v2, v6, Lj61;->b:Li61;

    .line 86
    .line 87
    iget-object v5, v6, Lj61;->a:Lom5;

    .line 88
    .line 89
    iget-object v5, v5, Lom5;->a:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-ne v5, v7, :cond_4

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    invoke-virtual {v2, v5}, Li61;->d(I)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_5

    .line 105
    .line 106
    :goto_2
    move v5, v7

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {v2, v5}, Li61;->b(I)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    sub-int/2addr v5, v2

    .line 113
    :goto_3
    if-ne p2, v7, :cond_6

    .line 114
    .line 115
    iget-object p2, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 116
    .line 117
    invoke-virtual {p2}, Lj61;->e()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    :cond_6
    if-eq v5, v7, :cond_a

    .line 122
    .line 123
    if-eq v5, p2, :cond_f

    .line 124
    .line 125
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    .line 127
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/a;

    .line 128
    .line 129
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_9

    .line 134
    .line 135
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 139
    .line 140
    invoke-virtual {v2, v5}, Lj61;->c(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lqg6;

    .line 148
    .line 149
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v5}, Lfh6;->i()Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    iget-object v7, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .line 159
    if-eqz v6, :cond_8

    .line 160
    .line 161
    iget-object v6, v7, Landroidx/recyclerview/widget/RecyclerView;->k:Lla;

    .line 162
    .line 163
    iget-object v6, v6, Lla;->a:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v6, Ldg7;

    .line 166
    .line 167
    invoke-virtual {v6, v5}, Ldg7;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Lrl8;

    .line 172
    .line 173
    if-nez v7, :cond_7

    .line 174
    .line 175
    invoke-static {}, Lrl8;->a()Lrl8;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v6, v5, v7}, Ldg7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_7
    iget v6, v7, Lrl8;->a:I

    .line 183
    .line 184
    or-int/2addr v1, v6

    .line 185
    iput v1, v7, Lrl8;->a:I

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_8
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView;->k:Lla;

    .line 189
    .line 190
    invoke-virtual {v1, v5}, Lla;->e(Lfh6;)V

    .line 191
    .line 192
    .line 193
    :goto_4
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 194
    .line 195
    invoke-virtual {v5}, Lfh6;->i()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    invoke-virtual {p0, p1, p2, v2, v1}, Lj61;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_7

    .line 203
    .line 204
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 207
    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string p3, "Cannot move a child from non-existing index:"

    .line 211
    .line 212
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p1

    .line 233
    :cond_a
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 234
    .line 235
    iget-object p3, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 236
    .line 237
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 242
    .line 243
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->A()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    new-instance p3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    .line 250
    .line 251
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p2

    .line 268
    :cond_b
    invoke-virtual {v6, p1, p2, v4}, Lj61;->a(Landroid/view/View;IZ)V

    .line 269
    .line 270
    .line 271
    iput-boolean v1, p3, Lqg6;->c:Z

    .line 272
    .line 273
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->e:Lav4;

    .line 274
    .line 275
    if-eqz p0, :cond_f

    .line 276
    .line 277
    iget-boolean p2, p0, Lav4;->e:Z

    .line 278
    .line 279
    if-eqz p2, :cond_f

    .line 280
    .line 281
    iget-object p2, p0, Lav4;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    if-eqz p2, :cond_c

    .line 291
    .line 292
    invoke-virtual {p2}, Lfh6;->c()I

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    :cond_c
    iget p2, p0, Lav4;->a:I

    .line 297
    .line 298
    if-ne v7, p2, :cond_f

    .line 299
    .line 300
    iput-object p1, p0, Lav4;->f:Landroid/view/View;

    .line 301
    .line 302
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 303
    .line 304
    if-eqz p0, :cond_f

    .line 305
    .line 306
    const-string p0, "smooth scroll target view has been attached"

    .line 307
    .line 308
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_d
    :goto_5
    invoke-virtual {v0}, Lfh6;->j()Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_e

    .line 317
    .line 318
    iget-object v1, v0, Lfh6;->n:Lvg6;

    .line 319
    .line 320
    invoke-virtual {v1, v0}, Lvg6;->m(Lfh6;)V

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_e
    iget v1, v0, Lfh6;->j:I

    .line 325
    .line 326
    and-int/lit8 v1, v1, -0x21

    .line 327
    .line 328
    iput v1, v0, Lfh6;->j:I

    .line 329
    .line 330
    :goto_6
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {p0, p1, p2, v1, v4}, Lj61;->b(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 337
    .line 338
    .line 339
    :cond_f
    :goto_7
    iget-boolean p0, p3, Lqg6;->d:Z

    .line 340
    .line 341
    if-eqz p0, :cond_11

    .line 342
    .line 343
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->T0:Z

    .line 344
    .line 345
    if-eqz p0, :cond_10

    .line 346
    .line 347
    new-instance p0, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string p1, "consuming pending invalidate on child "

    .line 350
    .line 351
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object p1, p3, Lqg6;->a:Lfh6;

    .line 355
    .line 356
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p0

    .line 363
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    :cond_10
    iget-object p0, v0, Lfh6;->a:Landroid/view/View;

    .line 367
    .line 368
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 369
    .line 370
    .line 371
    iput-boolean v4, p3, Lqg6;->d:Z

    .line 372
    .line 373
    :cond_11
    return-void
.end method

.method public l0(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->j(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public m0(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public n0(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract o()Z
.end method

.method public o0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/a;->n0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract p()Z
.end method

.method public abstract p0(Lvg6;Lbh6;)V
.end method

.method public q(Lqg6;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method public abstract q0(Lbh6;)V
.end method

.method public r0(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s(IILbh6;Lru3;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s0()Landroid/os/Parcelable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public t(ILru3;)V
    .locals 0

    .line 1
    return-void
.end method

.method public t0(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract u(Lbh6;)I
.end method

.method public u0(ILandroid/os/Bundle;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->c:Lvg6;

    .line 4
    .line 5
    iget v0, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :cond_0
    const/16 v2, 0x2000

    .line 43
    .line 44
    const/16 v3, 0x1000

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eq p1, v3, :cond_4

    .line 49
    .line 50
    if-eq p1, v2, :cond_1

    .line 51
    .line 52
    move v0, v5

    .line 53
    move v1, v0

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    iget-object v6, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    const/4 v7, -0x1

    .line 58
    invoke-virtual {v6, v7}, Landroid/view/View;->canScrollVertically(I)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    sub-int/2addr v0, v6

    .line 69
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    sub-int/2addr v0, v6

    .line 74
    neg-int v0, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v0, v5

    .line 77
    :goto_0
    iget-object v6, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    invoke-virtual {v6, v7}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    sub-int/2addr v1, v6

    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    sub-int/2addr v1, v6

    .line 95
    neg-int v1, v1

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move v1, v5

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget-object v6, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    invoke-virtual {v6, v4}, Landroid/view/View;->canScrollVertically(I)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    sub-int/2addr v0, v6

    .line 112
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    sub-int/2addr v0, v6

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move v0, v5

    .line 119
    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    invoke-virtual {v6, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_3

    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    sub-int/2addr v1, v6

    .line 132
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    sub-int/2addr v1, v6

    .line 137
    :goto_2
    if-nez v0, :cond_6

    .line 138
    .line 139
    if-nez v1, :cond_6

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    const/4 v6, 0x0

    .line 143
    const/high16 v7, 0x3f800000    # 1.0f

    .line 144
    .line 145
    if-eqz p2, :cond_8

    .line 146
    .line 147
    const-string v8, "androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT"

    .line 148
    .line 149
    invoke-virtual {p2, v8, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    cmpg-float v8, p2, v6

    .line 154
    .line 155
    if-gez v8, :cond_9

    .line 156
    .line 157
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->S0:Z

    .line 158
    .line 159
    if-nez p0, :cond_7

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v0, "attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value ("

    .line 167
    .line 168
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string p2, ")"

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :cond_8
    move p2, v7

    .line 188
    :cond_9
    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 189
    .line 190
    invoke-static {p2, v8}, Ljava/lang/Float;->compare(FF)I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    if-nez v8, :cond_d

    .line 195
    .line 196
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    .line 198
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView;->x:Lhg6;

    .line 199
    .line 200
    if-nez p2, :cond_a

    .line 201
    .line 202
    :goto_3
    return v5

    .line 203
    :cond_a
    if-eq p1, v3, :cond_c

    .line 204
    .line 205
    if-eq p1, v2, :cond_b

    .line 206
    .line 207
    return v4

    .line 208
    :cond_b
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 209
    .line 210
    .line 211
    return v4

    .line 212
    :cond_c
    invoke-virtual {p2}, Lhg6;->b()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    sub-int/2addr p1, v4

    .line 217
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 218
    .line 219
    .line 220
    return v4

    .line 221
    :cond_d
    invoke-static {v7, p2}, Ljava/lang/Float;->compare(FF)I

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_e

    .line 226
    .line 227
    invoke-static {v6, p2}, Ljava/lang/Float;->compare(FF)I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_e

    .line 232
    .line 233
    int-to-float p1, v1

    .line 234
    mul-float/2addr p1, p2

    .line 235
    float-to-int v1, p1

    .line 236
    int-to-float p1, v0

    .line 237
    mul-float/2addr p1, p2

    .line 238
    float-to-int v0, p1

    .line 239
    :cond_e
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 240
    .line 241
    invoke-virtual {p0, v1, v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->h0(IIZ)V

    .line 242
    .line 243
    .line 244
    return v4
.end method

.method public abstract v(Lbh6;)I
.end method

.method public final v0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lj61;->j(I)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public abstract w(Lbh6;)I
.end method

.method public final w0(Lvg6;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lfh6;->p()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/a;->z0(ILvg6;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public abstract x(Lbh6;)I
.end method

.method public final x0(Lvg6;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lvg6;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v1, v0, -0x1

    .line 10
    .line 11
    :goto_0
    iget-object v2, p1, Lvg6;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    if-ltz v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lfh6;

    .line 22
    .line 23
    iget-object v2, v2, Lfh6;->a:Landroid/view/View;

    .line 24
    .line 25
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Lfh6;->p()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v3, v4}, Lfh6;->o(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lfh6;->k()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    iget-object v5, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v5, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->g0:Lng6;

    .line 54
    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    invoke-virtual {v5, v3}, Lng6;->d(Lfh6;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    const/4 v5, 0x1

    .line 61
    invoke-virtual {v3, v5}, Lfh6;->o(Z)V

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x0

    .line 69
    iput-object v3, v2, Lfh6;->n:Lvg6;

    .line 70
    .line 71
    iput-boolean v4, v2, Lfh6;->o:Z

    .line 72
    .line 73
    iget v3, v2, Lfh6;->j:I

    .line 74
    .line 75
    and-int/lit8 v3, v3, -0x21

    .line 76
    .line 77
    iput v3, v2, Lfh6;->j:I

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lvg6;->j(Lfh6;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lvg6;->d:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 95
    .line 96
    .line 97
    :cond_4
    if-lez v0, :cond_5

    .line 98
    .line 99
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 102
    .line 103
    .line 104
    :cond_5
    return-void
.end method

.method public abstract y(Lbh6;)I
.end method

.method public final y0(Landroid/view/View;Lvg6;)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 2
    .line 3
    iget-object v0, p0, Lj61;->a:Lom5;

    .line 4
    .line 5
    iget v1, p0, Lj61;->d:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_3

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    if-eq v1, v3, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    iput v2, p0, Lj61;->d:I

    .line 16
    .line 17
    iput-object p1, p0, Lj61;->e:Landroid/view/View;

    .line 18
    .line 19
    iget-object v2, v0, Lom5;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-gez v2, :cond_0

    .line 28
    .line 29
    :goto_0
    iput v3, p0, Lj61;->d:I

    .line 30
    .line 31
    iput-object v1, p0, Lj61;->e:Landroid/view/View;

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :try_start_1
    iget-object v4, p0, Lj61;->b:Li61;

    .line 35
    .line 36
    invoke-virtual {v4, v2}, Li61;->f(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lj61;->k(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_3

    .line 48
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lom5;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_2
    invoke-virtual {p2, p1}, Lvg6;->i(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_3
    iput v3, p0, Lj61;->d:I

    .line 57
    .line 58
    iput-object v1, p0, Lj61;->e:Landroid/view/View;

    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    const-string p0, "Cannot call removeView(At) within removeViewIfHidden"

    .line 62
    .line 63
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    const-string p0, "Cannot call removeView(At) within removeView(At)"

    .line 68
    .line 69
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public abstract z(Lbh6;)I
.end method

.method public final z0(ILvg6;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/recyclerview/widget/a;->a:Lj61;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lj61;->j(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p2, v0}, Lvg6;->i(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
