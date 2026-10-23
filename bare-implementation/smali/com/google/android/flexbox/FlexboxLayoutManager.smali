.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroidx/recyclerview/widget/a;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmh3;
.implements Lah6;


# static fields
.field public static final g0:Landroid/graphics/Rect;


# instance fields
.field public H:I

.field public I:I

.field public J:I

.field public final K:I

.field public final L:I

.field public M:Z

.field public N:Z

.field public O:Ljava/util/List;

.field public final P:Lrh3;

.field public Q:Lvg6;

.field public R:Lbh6;

.field public S:Lvh3;

.field public final T:Lth3;

.field public U:Lgu2;

.field public V:Lgu2;

.field public W:Lwh3;

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:I

.field public final b0:Landroid/util/SparseArray;

.field public final c0:Landroid/content/Context;

.field public d0:Landroid/view/View;

.field public e0:I

.field public final f0:Lph3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g0:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 146
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 122
    invoke-direct {p0}, Landroidx/recyclerview/widget/a;-><init>()V

    const/4 v0, -0x1

    .line 123
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:I

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 125
    new-instance v1, Lrh3;

    invoke-direct {v1, p0}, Lrh3;-><init>(Lmh3;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 126
    new-instance v1, Lth3;

    invoke-direct {v1, p0}, Lth3;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 127
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    const/high16 v2, -0x80000000

    .line 128
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 129
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Z:I

    .line 130
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a0:I

    .line 131
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0:Landroid/util/SparseArray;

    .line 132
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0:I

    .line 133
    new-instance v0, Lph3;

    .line 134
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 136
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g1(I)V

    .line 137
    invoke-virtual {p0, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h1(I)V

    .line 138
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:I

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    .line 139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->v0()V

    .line 140
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 141
    invoke-static {v1}, Lth3;->b(Lth3;)V

    const/4 p2, 0x0

    .line 142
    iput p2, v1, Lth3;->d:I

    .line 143
    iput p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:I

    .line 144
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0:Landroid/content/Context;

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
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Lrh3;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lrh3;-><init>(Lmh3;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 20
    .line 21
    new-instance v1, Lth3;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lth3;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 27
    .line 28
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 29
    .line 30
    const/high16 v2, -0x80000000

    .line 31
    .line 32
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 33
    .line 34
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Z:I

    .line 35
    .line 36
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a0:I

    .line 37
    .line 38
    new-instance v2, Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0:Landroid/util/SparseArray;

    .line 44
    .line 45
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0:I

    .line 46
    .line 47
    new-instance v0, Lph3;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 53
    .line 54
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/a;->S(Landroid/content/Context;Landroid/util/AttributeSet;II)Lpg6;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget p3, p2, Lpg6;->a:I

    .line 59
    .line 60
    const/4 p4, 0x0

    .line 61
    const/4 v0, 0x1

    .line 62
    if-eqz p3, :cond_2

    .line 63
    .line 64
    if-eq p3, v0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-boolean p2, p2, Lpg6;->c:Z

    .line 68
    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    const/4 p2, 0x3

    .line 72
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g1(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 p2, 0x2

    .line 77
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g1(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    iget-boolean p2, p2, Lpg6;->c:Z

    .line 82
    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g1(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g1(I)V

    .line 90
    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h1(I)V

    .line 93
    .line 94
    .line 95
    iget p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:I

    .line 96
    .line 97
    const/4 p3, 0x4

    .line 98
    if-eq p2, p3, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->v0()V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lth3;->b(Lth3;)V

    .line 109
    .line 110
    .line 111
    iput p4, v1, Lth3;->d:I

    .line 112
    .line 113
    iput p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:I

    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 116
    .line 117
    .line 118
    :cond_4
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0:Landroid/content/Context;

    .line 119
    .line 120
    return-void
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


# virtual methods
.method public final C()Lqg6;
    .locals 1

    .line 1
    new-instance p0, Luh3;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Lqg6;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Luh3;->e:F

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iput v0, p0, Luh3;->f:F

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Luh3;->k:I

    .line 16
    .line 17
    const/high16 v0, -0x40800000    # -1.0f

    .line 18
    .line 19
    iput v0, p0, Luh3;->n:F

    .line 20
    .line 21
    const v0, 0xffffff

    .line 22
    .line 23
    .line 24
    iput v0, p0, Luh3;->r:I

    .line 25
    .line 26
    iput v0, p0, Luh3;->t:I

    .line 27
    .line 28
    return-object p0
.end method

.method public final C0(ILvg6;Lbh6;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e1(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 17
    .line 18
    iget p3, p2, Lth3;->d:I

    .line 19
    .line 20
    add-int/2addr p3, p1

    .line 21
    iput p3, p2, Lth3;->d:I

    .line 22
    .line 23
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 24
    .line 25
    neg-int p2, p1

    .line 26
    invoke-virtual {p0, p2}, Lgu2;->r(I)V

    .line 27
    .line 28
    .line 29
    return p1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d1(ILvg6;Lbh6;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 37
    .line 38
    .line 39
    return p1
.end method

.method public final D(Landroid/content/Context;Landroid/util/AttributeSet;)Lqg6;
    .locals 0

    .line 1
    new-instance p0, Luh3;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lqg6;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Luh3;->e:F

    .line 8
    .line 9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    iput p1, p0, Luh3;->f:F

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Luh3;->k:I

    .line 15
    .line 16
    const/high16 p1, -0x40800000    # -1.0f

    .line 17
    .line 18
    iput p1, p0, Luh3;->n:F

    .line 19
    .line 20
    const p1, 0xffffff

    .line 21
    .line 22
    .line 23
    iput p1, p0, Luh3;->r:I

    .line 24
    .line 25
    iput p1, p0, Luh3;->t:I

    .line 26
    .line 27
    return-object p0
.end method

.method public final D0(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 2
    .line 3
    const/high16 p1, -0x80000000

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:Lwh3;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p1, Lwh3;->a:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final E0(ILvg6;Lbh6;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e1(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 23
    .line 24
    iget p3, p2, Lth3;->d:I

    .line 25
    .line 26
    add-int/2addr p3, p1

    .line 27
    iput p3, p2, Lth3;->d:I

    .line 28
    .line 29
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 30
    .line 31
    neg-int p2, p1

    .line 32
    invoke-virtual {p0, p2}, Lgu2;->r(I)V

    .line 33
    .line 34
    .line 35
    return p1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d1(ILvg6;Lbh6;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 43
    .line 44
    .line 45
    return p1
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

.method public final Q0(Lbh6;)I
    .locals 2

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
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lbh6;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->T0()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->V0(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->X0(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lbh6;->b()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lgu2;->d(Landroid/view/View;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lgu2;->g(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr p1, v0

    .line 47
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 48
    .line 49
    invoke-virtual {p0}, Lgu2;->n()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public final R0(Lbh6;)I
    .locals 5

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
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lbh6;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->V0(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->X0(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lbh6;->b()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {v1}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {v0}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 40
    .line 41
    invoke-virtual {v3, v0}, Lgu2;->d(Landroid/view/View;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Lgu2;->g(Landroid/view/View;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v0, v3

    .line 52
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 57
    .line 58
    iget-object v3, v3, Lrh3;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, [I

    .line 61
    .line 62
    aget p1, v3, p1

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    const/4 v4, -0x1

    .line 67
    if-ne p1, v4, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    aget v2, v3, v2

    .line 71
    .line 72
    sub-int/2addr v2, p1

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    int-to-float v0, v0

    .line 76
    int-to-float v2, v2

    .line 77
    div-float/2addr v0, v2

    .line 78
    int-to-float p1, p1

    .line 79
    mul-float/2addr p1, v0

    .line 80
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 81
    .line 82
    invoke-virtual {v0}, Lgu2;->m()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lgu2;->g(Landroid/view/View;)I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    sub-int/2addr v0, p0

    .line 93
    int-to-float p0, v0

    .line 94
    add-float/2addr p1, p0

    .line 95
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0

    .line 100
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 101
    return p0
.end method

.method public final S0(Lbh6;)I
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
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p1}, Lbh6;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->V0(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->X0(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lbh6;->b()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_4

    .line 26
    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p0, v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Z0(II)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v3, -0x1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    move v1, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v1}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    add-int/lit8 v4, v4, -0x1

    .line 54
    .line 55
    invoke-virtual {p0, v4, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Z0(II)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-nez v4, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static {v4}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    :goto_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 67
    .line 68
    invoke-virtual {v4, v0}, Lgu2;->d(Landroid/view/View;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lgu2;->g(Landroid/view/View;)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    sub-int/2addr v0, p0

    .line 79
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    sub-int/2addr v3, v1

    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    int-to-float p0, p0

    .line 87
    int-to-float v0, v3

    .line 88
    div-float/2addr p0, v0

    .line 89
    invoke-virtual {p1}, Lbh6;->b()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    int-to-float p1, p1

    .line 94
    mul-float/2addr p0, p1

    .line 95
    float-to-int p0, p0

    .line 96
    return p0

    .line 97
    :cond_4
    :goto_2
    return v1
.end method

.method public final T0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v0, Lsu5;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 22
    .line 23
    new-instance v0, Ltu5;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Ltu5;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 37
    .line 38
    new-instance v0, Lsu5;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    if-nez v1, :cond_3

    .line 47
    .line 48
    new-instance v0, Ltu5;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 54
    .line 55
    new-instance v0, Lsu5;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    new-instance v0, Lsu5;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 69
    .line 70
    new-instance v0, Ltu5;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lgu2;-><init>(Landroidx/recyclerview/widget/a;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 76
    .line 77
    return-void
.end method

.method public final U0(Lvg6;Lbh6;Lvh3;)I
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v3, v2, Lvh3;->f:I

    .line 8
    .line 9
    const/high16 v4, -0x80000000

    .line 10
    .line 11
    if-eq v3, v4, :cond_1

    .line 12
    .line 13
    iget v5, v2, Lvh3;->a:I

    .line 14
    .line 15
    if-gez v5, :cond_0

    .line 16
    .line 17
    add-int/2addr v3, v5

    .line 18
    iput v3, v2, Lvh3;->f:I

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f1(Lvg6;Lvh3;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget v3, v2, Lvh3;->a:I

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    move v7, v3

    .line 30
    const/4 v8, 0x0

    .line 31
    :goto_0
    if-gtz v7, :cond_3

    .line 32
    .line 33
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 34
    .line 35
    iget-boolean v9, v9, Lvh3;->b:Z

    .line 36
    .line 37
    if-eqz v9, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move/from16 v26, v3

    .line 41
    .line 42
    goto/16 :goto_19

    .line 43
    .line 44
    :cond_3
    :goto_1
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 45
    .line 46
    iget v10, v2, Lvh3;->d:I

    .line 47
    .line 48
    if-ltz v10, :cond_2

    .line 49
    .line 50
    invoke-virtual/range {p2 .. p2}, Lbh6;->b()I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-ge v10, v11, :cond_2

    .line 55
    .line 56
    iget v10, v2, Lvh3;->c:I

    .line 57
    .line 58
    if-ltz v10, :cond_2

    .line 59
    .line 60
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-ge v10, v9, :cond_2

    .line 65
    .line 66
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 67
    .line 68
    iget v10, v2, Lvh3;->c:I

    .line 69
    .line 70
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    move-object v12, v9

    .line 75
    check-cast v12, Loh3;

    .line 76
    .line 77
    iget v9, v12, Loh3;->o:I

    .line 78
    .line 79
    iput v9, v2, Lvh3;->d:I

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    const/4 v10, -0x1

    .line 86
    const/16 v18, 0x20

    .line 87
    .line 88
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 89
    .line 90
    const-string v14, "Invalid justifyContent is set: "

    .line 91
    .line 92
    const/16 v19, 0x0

    .line 93
    .line 94
    const/high16 v20, 0x40000000    # 2.0f

    .line 95
    .line 96
    sget-object v13, Lcom/google/android/flexbox/FlexboxLayoutManager;->g0:Landroid/graphics/Rect;

    .line 97
    .line 98
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 99
    .line 100
    if-eqz v9, :cond_13

    .line 101
    .line 102
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 107
    .line 108
    .line 109
    move-result v24

    .line 110
    iget v6, v0, Landroidx/recyclerview/widget/a;->y:I

    .line 111
    .line 112
    iget v15, v2, Lvh3;->e:I

    .line 113
    .line 114
    move/from16 v26, v3

    .line 115
    .line 116
    iget v3, v2, Lvh3;->h:I

    .line 117
    .line 118
    if-ne v3, v10, :cond_4

    .line 119
    .line 120
    iget v3, v12, Loh3;->g:I

    .line 121
    .line 122
    sub-int/2addr v15, v3

    .line 123
    :cond_4
    move v3, v15

    .line 124
    iget v15, v2, Lvh3;->d:I

    .line 125
    .line 126
    iget v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:I

    .line 127
    .line 128
    if-eqz v10, :cond_d

    .line 129
    .line 130
    move/from16 v28, v3

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    if-eq v10, v3, :cond_c

    .line 134
    .line 135
    const/4 v3, 0x2

    .line 136
    if-eq v10, v3, :cond_b

    .line 137
    .line 138
    const/4 v3, 0x3

    .line 139
    if-eq v10, v3, :cond_9

    .line 140
    .line 141
    const/4 v3, 0x4

    .line 142
    if-eq v10, v3, :cond_7

    .line 143
    .line 144
    const/4 v3, 0x5

    .line 145
    if-ne v10, v3, :cond_6

    .line 146
    .line 147
    iget v3, v12, Loh3;->h:I

    .line 148
    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    iget v10, v12, Loh3;->e:I

    .line 152
    .line 153
    sub-int v10, v6, v10

    .line 154
    .line 155
    int-to-float v10, v10

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    .line 158
    int-to-float v3, v3

    .line 159
    div-float v3, v10, v3

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_5
    const/4 v3, 0x0

    .line 163
    :goto_2
    int-to-float v9, v9

    .line 164
    add-float/2addr v9, v3

    .line 165
    sub-int v6, v6, v24

    .line 166
    .line 167
    int-to-float v6, v6

    .line 168
    sub-float/2addr v6, v3

    .line 169
    goto :goto_6

    .line 170
    :cond_6
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:I

    .line 171
    .line 172
    invoke-static {v0, v14}, Lx5;->g(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return v19

    .line 176
    :cond_7
    iget v3, v12, Loh3;->h:I

    .line 177
    .line 178
    if-eqz v3, :cond_8

    .line 179
    .line 180
    iget v10, v12, Loh3;->e:I

    .line 181
    .line 182
    sub-int v10, v6, v10

    .line 183
    .line 184
    int-to-float v10, v10

    .line 185
    int-to-float v3, v3

    .line 186
    div-float v3, v10, v3

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    const/4 v3, 0x0

    .line 190
    :goto_3
    int-to-float v9, v9

    .line 191
    div-float v10, v3, v20

    .line 192
    .line 193
    add-float/2addr v9, v10

    .line 194
    sub-int v6, v6, v24

    .line 195
    .line 196
    int-to-float v6, v6

    .line 197
    sub-float/2addr v6, v10

    .line 198
    goto :goto_6

    .line 199
    :cond_9
    int-to-float v9, v9

    .line 200
    iget v3, v12, Loh3;->h:I

    .line 201
    .line 202
    const/4 v10, 0x1

    .line 203
    if-eq v3, v10, :cond_a

    .line 204
    .line 205
    add-int/lit8 v3, v3, -0x1

    .line 206
    .line 207
    int-to-float v3, v3

    .line 208
    move/from16 v16, v3

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_a
    const/high16 v16, 0x3f800000    # 1.0f

    .line 212
    .line 213
    :goto_4
    iget v3, v12, Loh3;->e:I

    .line 214
    .line 215
    sub-int v3, v6, v3

    .line 216
    .line 217
    int-to-float v3, v3

    .line 218
    div-float v3, v3, v16

    .line 219
    .line 220
    sub-int v6, v6, v24

    .line 221
    .line 222
    int-to-float v6, v6

    .line 223
    goto :goto_6

    .line 224
    :cond_b
    int-to-float v3, v9

    .line 225
    iget v9, v12, Loh3;->e:I

    .line 226
    .line 227
    sub-int v9, v6, v9

    .line 228
    .line 229
    int-to-float v9, v9

    .line 230
    div-float v9, v9, v20

    .line 231
    .line 232
    add-float/2addr v3, v9

    .line 233
    sub-int v6, v6, v24

    .line 234
    .line 235
    int-to-float v6, v6

    .line 236
    sub-float/2addr v6, v9

    .line 237
    move v9, v3

    .line 238
    :goto_5
    const/4 v3, 0x0

    .line 239
    goto :goto_6

    .line 240
    :cond_c
    iget v3, v12, Loh3;->e:I

    .line 241
    .line 242
    sub-int/2addr v6, v3

    .line 243
    add-int v6, v6, v24

    .line 244
    .line 245
    int-to-float v6, v6

    .line 246
    sub-int/2addr v3, v9

    .line 247
    int-to-float v3, v3

    .line 248
    move v9, v6

    .line 249
    move v6, v3

    .line 250
    goto :goto_5

    .line 251
    :cond_d
    move/from16 v28, v3

    .line 252
    .line 253
    int-to-float v9, v9

    .line 254
    sub-int v6, v6, v24

    .line 255
    .line 256
    int-to-float v6, v6

    .line 257
    goto :goto_5

    .line 258
    :goto_6
    iget v10, v11, Lth3;->d:I

    .line 259
    .line 260
    int-to-float v10, v10

    .line 261
    sub-float/2addr v9, v10

    .line 262
    sub-float/2addr v6, v10

    .line 263
    const/4 v10, 0x0

    .line 264
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    iget v10, v12, Loh3;->h:I

    .line 269
    .line 270
    move/from16 v17, v3

    .line 271
    .line 272
    move v14, v15

    .line 273
    move/from16 v11, v19

    .line 274
    .line 275
    :goto_7
    add-int v3, v15, v10

    .line 276
    .line 277
    if-ge v14, v3, :cond_12

    .line 278
    .line 279
    invoke-virtual {v0, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    if-nez v3, :cond_e

    .line 284
    .line 285
    move/from16 v24, v5

    .line 286
    .line 287
    move/from16 v21, v10

    .line 288
    .line 289
    move-object/from16 v30, v13

    .line 290
    .line 291
    move/from16 v23, v14

    .line 292
    .line 293
    move/from16 v22, v15

    .line 294
    .line 295
    const/4 v3, -0x1

    .line 296
    goto/16 :goto_b

    .line 297
    .line 298
    :cond_e
    move/from16 v24, v5

    .line 299
    .line 300
    iget v5, v2, Lvh3;->h:I

    .line 301
    .line 302
    move/from16 v16, v6

    .line 303
    .line 304
    const/4 v6, 0x1

    .line 305
    if-ne v5, v6, :cond_f

    .line 306
    .line 307
    invoke-virtual {v0, v13, v3}, Landroidx/recyclerview/widget/a;->n(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    move/from16 v6, v19

    .line 311
    .line 312
    const/4 v5, -0x1

    .line 313
    invoke-virtual {v0, v3, v5, v6}, Landroidx/recyclerview/widget/a;->l(Landroid/view/View;IZ)V

    .line 314
    .line 315
    .line 316
    :goto_8
    move v6, v11

    .line 317
    goto :goto_9

    .line 318
    :cond_f
    move/from16 v6, v19

    .line 319
    .line 320
    const/4 v5, -0x1

    .line 321
    invoke-virtual {v0, v13, v3}, Landroidx/recyclerview/widget/a;->n(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v3, v11, v6}, Landroidx/recyclerview/widget/a;->l(Landroid/view/View;IZ)V

    .line 325
    .line 326
    .line 327
    add-int/lit8 v11, v11, 0x1

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :goto_9
    iget-object v11, v4, Lrh3;->d:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v11, [J

    .line 333
    .line 334
    move/from16 v20, v6

    .line 335
    .line 336
    aget-wide v5, v11, v14

    .line 337
    .line 338
    long-to-int v11, v5

    .line 339
    shr-long v5, v5, v18

    .line 340
    .line 341
    long-to-int v5, v5

    .line 342
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    check-cast v6, Luh3;

    .line 347
    .line 348
    invoke-virtual {v0, v3, v11, v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j1(Landroid/view/View;IILuh3;)Z

    .line 349
    .line 350
    .line 351
    move-result v21

    .line 352
    if-eqz v21, :cond_10

    .line 353
    .line 354
    invoke-virtual {v3, v11, v5}, Landroid/view/View;->measure(II)V

    .line 355
    .line 356
    .line 357
    :cond_10
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 358
    .line 359
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 360
    .line 361
    .line 362
    move-result-object v11

    .line 363
    check-cast v11, Lqg6;

    .line 364
    .line 365
    iget-object v11, v11, Lqg6;->b:Landroid/graphics/Rect;

    .line 366
    .line 367
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 368
    .line 369
    add-int/2addr v5, v11

    .line 370
    int-to-float v5, v5

    .line 371
    add-float/2addr v9, v5

    .line 372
    iget v5, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 373
    .line 374
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 375
    .line 376
    .line 377
    move-result-object v11

    .line 378
    check-cast v11, Lqg6;

    .line 379
    .line 380
    iget-object v11, v11, Lqg6;->b:Landroid/graphics/Rect;

    .line 381
    .line 382
    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 383
    .line 384
    add-int/2addr v5, v11

    .line 385
    int-to-float v5, v5

    .line 386
    sub-float v5, v16, v5

    .line 387
    .line 388
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    check-cast v11, Lqg6;

    .line 393
    .line 394
    iget-object v11, v11, Lqg6;->b:Landroid/graphics/Rect;

    .line 395
    .line 396
    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 397
    .line 398
    add-int v11, v28, v11

    .line 399
    .line 400
    move-object/from16 v16, v3

    .line 401
    .line 402
    iget-boolean v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 403
    .line 404
    move/from16 v21, v10

    .line 405
    .line 406
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 407
    .line 408
    if-eqz v3, :cond_11

    .line 409
    .line 410
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    .line 415
    .line 416
    .line 417
    move-result v22

    .line 418
    sub-int v3, v3, v22

    .line 419
    .line 420
    move/from16 v22, v15

    .line 421
    .line 422
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 423
    .line 424
    .line 425
    move-result v15

    .line 426
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    .line 427
    .line 428
    .line 429
    move-result v23

    .line 430
    add-int v23, v23, v11

    .line 431
    .line 432
    move/from16 v30, v14

    .line 433
    .line 434
    move v14, v11

    .line 435
    move-object/from16 v11, v16

    .line 436
    .line 437
    move/from16 v16, v23

    .line 438
    .line 439
    move/from16 v23, v30

    .line 440
    .line 441
    move-object/from16 v30, v13

    .line 442
    .line 443
    move v13, v3

    .line 444
    const/4 v3, -0x1

    .line 445
    invoke-virtual/range {v10 .. v16}, Lrh3;->p(Landroid/view/View;Loh3;IIII)V

    .line 446
    .line 447
    .line 448
    goto :goto_a

    .line 449
    :cond_11
    move-object/from16 v30, v13

    .line 450
    .line 451
    move/from16 v23, v14

    .line 452
    .line 453
    move/from16 v22, v15

    .line 454
    .line 455
    const/4 v3, -0x1

    .line 456
    move v14, v11

    .line 457
    move-object/from16 v11, v16

    .line 458
    .line 459
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 460
    .line 461
    .line 462
    move-result v13

    .line 463
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 464
    .line 465
    .line 466
    move-result v15

    .line 467
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 468
    .line 469
    .line 470
    move-result v16

    .line 471
    add-int v15, v16, v15

    .line 472
    .line 473
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 474
    .line 475
    .line 476
    move-result v16

    .line 477
    add-int v16, v16, v14

    .line 478
    .line 479
    invoke-virtual/range {v10 .. v16}, Lrh3;->p(Landroid/view/View;Loh3;IIII)V

    .line 480
    .line 481
    .line 482
    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 483
    .line 484
    .line 485
    move-result v10

    .line 486
    iget v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 487
    .line 488
    add-int/2addr v10, v13

    .line 489
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 490
    .line 491
    .line 492
    move-result-object v13

    .line 493
    check-cast v13, Lqg6;

    .line 494
    .line 495
    iget-object v13, v13, Lqg6;->b:Landroid/graphics/Rect;

    .line 496
    .line 497
    iget v13, v13, Landroid/graphics/Rect;->right:I

    .line 498
    .line 499
    add-int/2addr v10, v13

    .line 500
    int-to-float v10, v10

    .line 501
    add-float v10, v10, v17

    .line 502
    .line 503
    add-float/2addr v10, v9

    .line 504
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 505
    .line 506
    .line 507
    move-result v9

    .line 508
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 509
    .line 510
    add-int/2addr v9, v6

    .line 511
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    check-cast v6, Lqg6;

    .line 516
    .line 517
    iget-object v6, v6, Lqg6;->b:Landroid/graphics/Rect;

    .line 518
    .line 519
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 520
    .line 521
    add-int/2addr v9, v6

    .line 522
    int-to-float v6, v9

    .line 523
    add-float v6, v6, v17

    .line 524
    .line 525
    sub-float/2addr v5, v6

    .line 526
    move v6, v5

    .line 527
    move v9, v10

    .line 528
    move/from16 v11, v20

    .line 529
    .line 530
    :goto_b
    add-int/lit8 v14, v23, 0x1

    .line 531
    .line 532
    move/from16 v10, v21

    .line 533
    .line 534
    move/from16 v15, v22

    .line 535
    .line 536
    move/from16 v5, v24

    .line 537
    .line 538
    move-object/from16 v13, v30

    .line 539
    .line 540
    const/16 v19, 0x0

    .line 541
    .line 542
    goto/16 :goto_7

    .line 543
    .line 544
    :cond_12
    move/from16 v24, v5

    .line 545
    .line 546
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 547
    .line 548
    iget v3, v3, Lvh3;->h:I

    .line 549
    .line 550
    iget v4, v2, Lvh3;->c:I

    .line 551
    .line 552
    add-int/2addr v4, v3

    .line 553
    iput v4, v2, Lvh3;->c:I

    .line 554
    .line 555
    iget v3, v12, Loh3;->g:I

    .line 556
    .line 557
    goto/16 :goto_17

    .line 558
    .line 559
    :cond_13
    move/from16 v26, v3

    .line 560
    .line 561
    move/from16 v24, v5

    .line 562
    .line 563
    move v3, v10

    .line 564
    move-object/from16 v30, v13

    .line 565
    .line 566
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 567
    .line 568
    .line 569
    move-result v5

    .line 570
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 571
    .line 572
    .line 573
    move-result v6

    .line 574
    iget v9, v0, Landroidx/recyclerview/widget/a;->G:I

    .line 575
    .line 576
    iget v10, v2, Lvh3;->e:I

    .line 577
    .line 578
    iget v13, v2, Lvh3;->h:I

    .line 579
    .line 580
    if-ne v13, v3, :cond_14

    .line 581
    .line 582
    iget v13, v12, Loh3;->g:I

    .line 583
    .line 584
    sub-int v15, v10, v13

    .line 585
    .line 586
    add-int/2addr v10, v13

    .line 587
    move/from16 v27, v10

    .line 588
    .line 589
    move/from16 v25, v15

    .line 590
    .line 591
    goto :goto_c

    .line 592
    :cond_14
    move/from16 v25, v10

    .line 593
    .line 594
    move/from16 v27, v25

    .line 595
    .line 596
    :goto_c
    iget v10, v2, Lvh3;->d:I

    .line 597
    .line 598
    iget v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:I

    .line 599
    .line 600
    if-eqz v13, :cond_1d

    .line 601
    .line 602
    const/4 v15, 0x1

    .line 603
    if-eq v13, v15, :cond_1c

    .line 604
    .line 605
    const/4 v3, 0x2

    .line 606
    if-eq v13, v3, :cond_1b

    .line 607
    .line 608
    const/4 v3, 0x3

    .line 609
    if-eq v13, v3, :cond_19

    .line 610
    .line 611
    const/4 v3, 0x4

    .line 612
    if-eq v13, v3, :cond_17

    .line 613
    .line 614
    const/4 v3, 0x5

    .line 615
    if-ne v13, v3, :cond_16

    .line 616
    .line 617
    iget v3, v12, Loh3;->h:I

    .line 618
    .line 619
    if-eqz v3, :cond_15

    .line 620
    .line 621
    iget v13, v12, Loh3;->e:I

    .line 622
    .line 623
    sub-int v13, v9, v13

    .line 624
    .line 625
    int-to-float v13, v13

    .line 626
    add-int/lit8 v3, v3, 0x1

    .line 627
    .line 628
    int-to-float v3, v3

    .line 629
    div-float v3, v13, v3

    .line 630
    .line 631
    goto :goto_d

    .line 632
    :cond_15
    const/4 v3, 0x0

    .line 633
    :goto_d
    int-to-float v5, v5

    .line 634
    add-float/2addr v5, v3

    .line 635
    sub-int/2addr v9, v6

    .line 636
    int-to-float v6, v9

    .line 637
    sub-float/2addr v6, v3

    .line 638
    goto :goto_11

    .line 639
    :cond_16
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:I

    .line 640
    .line 641
    invoke-static {v0, v14}, Lx5;->g(ILjava/lang/String;)V

    .line 642
    .line 643
    .line 644
    const/16 v19, 0x0

    .line 645
    .line 646
    return v19

    .line 647
    :cond_17
    iget v3, v12, Loh3;->h:I

    .line 648
    .line 649
    if-eqz v3, :cond_18

    .line 650
    .line 651
    iget v13, v12, Loh3;->e:I

    .line 652
    .line 653
    sub-int v13, v9, v13

    .line 654
    .line 655
    int-to-float v13, v13

    .line 656
    int-to-float v3, v3

    .line 657
    div-float v3, v13, v3

    .line 658
    .line 659
    goto :goto_e

    .line 660
    :cond_18
    const/4 v3, 0x0

    .line 661
    :goto_e
    int-to-float v5, v5

    .line 662
    div-float v13, v3, v20

    .line 663
    .line 664
    add-float/2addr v5, v13

    .line 665
    sub-int/2addr v9, v6

    .line 666
    int-to-float v6, v9

    .line 667
    sub-float/2addr v6, v13

    .line 668
    goto :goto_11

    .line 669
    :cond_19
    int-to-float v5, v5

    .line 670
    iget v3, v12, Loh3;->h:I

    .line 671
    .line 672
    if-eq v3, v15, :cond_1a

    .line 673
    .line 674
    add-int/lit8 v3, v3, -0x1

    .line 675
    .line 676
    int-to-float v13, v3

    .line 677
    goto :goto_f

    .line 678
    :cond_1a
    const/high16 v13, 0x3f800000    # 1.0f

    .line 679
    .line 680
    :goto_f
    iget v3, v12, Loh3;->e:I

    .line 681
    .line 682
    sub-int v3, v9, v3

    .line 683
    .line 684
    int-to-float v3, v3

    .line 685
    div-float/2addr v3, v13

    .line 686
    sub-int/2addr v9, v6

    .line 687
    int-to-float v6, v9

    .line 688
    goto :goto_11

    .line 689
    :cond_1b
    int-to-float v3, v5

    .line 690
    iget v5, v12, Loh3;->e:I

    .line 691
    .line 692
    sub-int v5, v9, v5

    .line 693
    .line 694
    int-to-float v5, v5

    .line 695
    div-float v5, v5, v20

    .line 696
    .line 697
    add-float/2addr v3, v5

    .line 698
    sub-int/2addr v9, v6

    .line 699
    int-to-float v6, v9

    .line 700
    sub-float/2addr v6, v5

    .line 701
    move v5, v3

    .line 702
    :goto_10
    const/4 v3, 0x0

    .line 703
    goto :goto_11

    .line 704
    :cond_1c
    iget v3, v12, Loh3;->e:I

    .line 705
    .line 706
    sub-int/2addr v9, v3

    .line 707
    add-int/2addr v9, v6

    .line 708
    int-to-float v6, v9

    .line 709
    sub-int/2addr v3, v5

    .line 710
    int-to-float v3, v3

    .line 711
    move v5, v6

    .line 712
    move v6, v3

    .line 713
    goto :goto_10

    .line 714
    :cond_1d
    const/4 v15, 0x1

    .line 715
    int-to-float v5, v5

    .line 716
    sub-int/2addr v9, v6

    .line 717
    int-to-float v6, v9

    .line 718
    goto :goto_10

    .line 719
    :goto_11
    iget v9, v11, Lth3;->d:I

    .line 720
    .line 721
    int-to-float v9, v9

    .line 722
    sub-float/2addr v5, v9

    .line 723
    sub-float/2addr v6, v9

    .line 724
    const/4 v9, 0x0

    .line 725
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    .line 726
    .line 727
    .line 728
    move-result v3

    .line 729
    iget v9, v12, Loh3;->h:I

    .line 730
    .line 731
    move v13, v10

    .line 732
    const/4 v11, 0x0

    .line 733
    :goto_12
    add-int v14, v10, v9

    .line 734
    .line 735
    if-ge v13, v14, :cond_24

    .line 736
    .line 737
    invoke-virtual {v0, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(I)Landroid/view/View;

    .line 738
    .line 739
    .line 740
    move-result-object v14

    .line 741
    if-nez v14, :cond_1e

    .line 742
    .line 743
    move/from16 v21, v3

    .line 744
    .line 745
    move-object/from16 v20, v4

    .line 746
    .line 747
    move v4, v6

    .line 748
    move/from16 v29, v10

    .line 749
    .line 750
    move-object/from16 v3, v30

    .line 751
    .line 752
    move v6, v5

    .line 753
    move v5, v13

    .line 754
    move/from16 v30, v15

    .line 755
    .line 756
    goto/16 :goto_16

    .line 757
    .line 758
    :cond_1e
    iget-object v15, v4, Lrh3;->d:Ljava/lang/Object;

    .line 759
    .line 760
    check-cast v15, [J

    .line 761
    .line 762
    move/from16 v21, v3

    .line 763
    .line 764
    move-object/from16 v20, v4

    .line 765
    .line 766
    aget-wide v3, v15, v13

    .line 767
    .line 768
    long-to-int v15, v3

    .line 769
    shr-long v3, v3, v18

    .line 770
    .line 771
    long-to-int v3, v3

    .line 772
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    check-cast v4, Luh3;

    .line 777
    .line 778
    invoke-virtual {v0, v14, v15, v3, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j1(Landroid/view/View;IILuh3;)Z

    .line 779
    .line 780
    .line 781
    move-result v16

    .line 782
    if-eqz v16, :cond_1f

    .line 783
    .line 784
    invoke-virtual {v14, v15, v3}, Landroid/view/View;->measure(II)V

    .line 785
    .line 786
    .line 787
    :cond_1f
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 788
    .line 789
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 790
    .line 791
    .line 792
    move-result-object v15

    .line 793
    check-cast v15, Lqg6;

    .line 794
    .line 795
    iget-object v15, v15, Lqg6;->b:Landroid/graphics/Rect;

    .line 796
    .line 797
    iget v15, v15, Landroid/graphics/Rect;->top:I

    .line 798
    .line 799
    add-int/2addr v3, v15

    .line 800
    int-to-float v3, v3

    .line 801
    add-float/2addr v5, v3

    .line 802
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 803
    .line 804
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 805
    .line 806
    .line 807
    move-result-object v15

    .line 808
    check-cast v15, Lqg6;

    .line 809
    .line 810
    iget-object v15, v15, Lqg6;->b:Landroid/graphics/Rect;

    .line 811
    .line 812
    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    .line 813
    .line 814
    add-int/2addr v3, v15

    .line 815
    int-to-float v3, v3

    .line 816
    sub-float/2addr v6, v3

    .line 817
    iget v3, v2, Lvh3;->h:I

    .line 818
    .line 819
    const/4 v15, 0x1

    .line 820
    if-ne v3, v15, :cond_20

    .line 821
    .line 822
    move-object/from16 v3, v30

    .line 823
    .line 824
    invoke-virtual {v0, v3, v14}, Landroidx/recyclerview/widget/a;->n(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 825
    .line 826
    .line 827
    move/from16 v22, v5

    .line 828
    .line 829
    move/from16 v19, v6

    .line 830
    .line 831
    const/4 v5, -0x1

    .line 832
    const/4 v6, 0x0

    .line 833
    invoke-virtual {v0, v14, v5, v6}, Landroidx/recyclerview/widget/a;->l(Landroid/view/View;IZ)V

    .line 834
    .line 835
    .line 836
    :goto_13
    move/from16 v23, v11

    .line 837
    .line 838
    goto :goto_14

    .line 839
    :cond_20
    move/from16 v22, v5

    .line 840
    .line 841
    move/from16 v19, v6

    .line 842
    .line 843
    move-object/from16 v3, v30

    .line 844
    .line 845
    const/4 v5, -0x1

    .line 846
    const/4 v6, 0x0

    .line 847
    invoke-virtual {v0, v3, v14}, Landroidx/recyclerview/widget/a;->n(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0, v14, v11, v6}, Landroidx/recyclerview/widget/a;->l(Landroid/view/View;IZ)V

    .line 851
    .line 852
    .line 853
    add-int/lit8 v11, v11, 0x1

    .line 854
    .line 855
    goto :goto_13

    .line 856
    :goto_14
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 857
    .line 858
    .line 859
    move-result-object v11

    .line 860
    check-cast v11, Lqg6;

    .line 861
    .line 862
    iget-object v11, v11, Lqg6;->b:Landroid/graphics/Rect;

    .line 863
    .line 864
    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 865
    .line 866
    add-int v11, v25, v11

    .line 867
    .line 868
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 869
    .line 870
    .line 871
    move-result-object v16

    .line 872
    move-object/from16 v5, v16

    .line 873
    .line 874
    check-cast v5, Lqg6;

    .line 875
    .line 876
    iget-object v5, v5, Lqg6;->b:Landroid/graphics/Rect;

    .line 877
    .line 878
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 879
    .line 880
    sub-int v16, v27, v5

    .line 881
    .line 882
    move v5, v13

    .line 883
    iget-boolean v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 884
    .line 885
    iget-boolean v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Z

    .line 886
    .line 887
    move/from16 v17, v10

    .line 888
    .line 889
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 890
    .line 891
    if-eqz v13, :cond_22

    .line 892
    .line 893
    if-eqz v6, :cond_21

    .line 894
    .line 895
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    sub-int v6, v16, v6

    .line 900
    .line 901
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 902
    .line 903
    .line 904
    move-result v11

    .line 905
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 906
    .line 907
    .line 908
    move-result v29

    .line 909
    sub-int v11, v11, v29

    .line 910
    .line 911
    move/from16 v29, v17

    .line 912
    .line 913
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 914
    .line 915
    .line 916
    move-result v17

    .line 917
    move/from16 v30, v15

    .line 918
    .line 919
    move v15, v11

    .line 920
    move-object v11, v14

    .line 921
    move v14, v6

    .line 922
    invoke-virtual/range {v10 .. v17}, Lrh3;->q(Landroid/view/View;Loh3;ZIIII)V

    .line 923
    .line 924
    .line 925
    goto :goto_15

    .line 926
    :cond_21
    move-object v11, v14

    .line 927
    move/from16 v30, v15

    .line 928
    .line 929
    move/from16 v29, v17

    .line 930
    .line 931
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 932
    .line 933
    .line 934
    move-result v6

    .line 935
    sub-int v14, v16, v6

    .line 936
    .line 937
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    .line 938
    .line 939
    .line 940
    move-result v15

    .line 941
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    .line 942
    .line 943
    .line 944
    move-result v6

    .line 945
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 946
    .line 947
    .line 948
    move-result v17

    .line 949
    add-int v17, v17, v6

    .line 950
    .line 951
    invoke-virtual/range {v10 .. v17}, Lrh3;->q(Landroid/view/View;Loh3;ZIIII)V

    .line 952
    .line 953
    .line 954
    goto :goto_15

    .line 955
    :cond_22
    move-object/from16 v29, v14

    .line 956
    .line 957
    move v14, v11

    .line 958
    move-object/from16 v11, v29

    .line 959
    .line 960
    move/from16 v30, v15

    .line 961
    .line 962
    move/from16 v29, v17

    .line 963
    .line 964
    if-eqz v6, :cond_23

    .line 965
    .line 966
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 967
    .line 968
    .line 969
    move-result v6

    .line 970
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 971
    .line 972
    .line 973
    move-result v15

    .line 974
    sub-int v15, v6, v15

    .line 975
    .line 976
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 977
    .line 978
    .line 979
    move-result v6

    .line 980
    add-int v16, v6, v14

    .line 981
    .line 982
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    .line 983
    .line 984
    .line 985
    move-result v17

    .line 986
    invoke-virtual/range {v10 .. v17}, Lrh3;->q(Landroid/view/View;Loh3;ZIIII)V

    .line 987
    .line 988
    .line 989
    goto :goto_15

    .line 990
    :cond_23
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    .line 991
    .line 992
    .line 993
    move-result v15

    .line 994
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 995
    .line 996
    .line 997
    move-result v6

    .line 998
    add-int v16, v6, v14

    .line 999
    .line 1000
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    .line 1001
    .line 1002
    .line 1003
    move-result v6

    .line 1004
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 1005
    .line 1006
    .line 1007
    move-result v17

    .line 1008
    add-int v17, v17, v6

    .line 1009
    .line 1010
    invoke-virtual/range {v10 .. v17}, Lrh3;->q(Landroid/view/View;Loh3;ZIIII)V

    .line 1011
    .line 1012
    .line 1013
    :goto_15
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 1014
    .line 1015
    .line 1016
    move-result v6

    .line 1017
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1018
    .line 1019
    add-int/2addr v6, v10

    .line 1020
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v10

    .line 1024
    check-cast v10, Lqg6;

    .line 1025
    .line 1026
    iget-object v10, v10, Lqg6;->b:Landroid/graphics/Rect;

    .line 1027
    .line 1028
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1029
    .line 1030
    add-int/2addr v6, v10

    .line 1031
    int-to-float v6, v6

    .line 1032
    add-float v6, v6, v21

    .line 1033
    .line 1034
    add-float v6, v6, v22

    .line 1035
    .line 1036
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 1037
    .line 1038
    .line 1039
    move-result v10

    .line 1040
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1041
    .line 1042
    add-int/2addr v10, v4

    .line 1043
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v4

    .line 1047
    check-cast v4, Lqg6;

    .line 1048
    .line 1049
    iget-object v4, v4, Lqg6;->b:Landroid/graphics/Rect;

    .line 1050
    .line 1051
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 1052
    .line 1053
    add-int/2addr v10, v4

    .line 1054
    int-to-float v4, v10

    .line 1055
    add-float v4, v4, v21

    .line 1056
    .line 1057
    sub-float v4, v19, v4

    .line 1058
    .line 1059
    move/from16 v11, v23

    .line 1060
    .line 1061
    :goto_16
    add-int/lit8 v13, v5, 0x1

    .line 1062
    .line 1063
    move v5, v6

    .line 1064
    move/from16 v10, v29

    .line 1065
    .line 1066
    move/from16 v15, v30

    .line 1067
    .line 1068
    move-object/from16 v30, v3

    .line 1069
    .line 1070
    move v6, v4

    .line 1071
    move-object/from16 v4, v20

    .line 1072
    .line 1073
    move/from16 v3, v21

    .line 1074
    .line 1075
    goto/16 :goto_12

    .line 1076
    .line 1077
    :cond_24
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 1078
    .line 1079
    iget v3, v3, Lvh3;->h:I

    .line 1080
    .line 1081
    iget v4, v2, Lvh3;->c:I

    .line 1082
    .line 1083
    add-int/2addr v4, v3

    .line 1084
    iput v4, v2, Lvh3;->c:I

    .line 1085
    .line 1086
    iget v3, v12, Loh3;->g:I

    .line 1087
    .line 1088
    :goto_17
    add-int/2addr v8, v3

    .line 1089
    if-nez v24, :cond_25

    .line 1090
    .line 1091
    iget-boolean v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 1092
    .line 1093
    if-eqz v3, :cond_25

    .line 1094
    .line 1095
    iget v3, v12, Loh3;->g:I

    .line 1096
    .line 1097
    iget v4, v2, Lvh3;->h:I

    .line 1098
    .line 1099
    mul-int/2addr v3, v4

    .line 1100
    iget v4, v2, Lvh3;->e:I

    .line 1101
    .line 1102
    sub-int/2addr v4, v3

    .line 1103
    iput v4, v2, Lvh3;->e:I

    .line 1104
    .line 1105
    goto :goto_18

    .line 1106
    :cond_25
    iget v3, v12, Loh3;->g:I

    .line 1107
    .line 1108
    iget v4, v2, Lvh3;->h:I

    .line 1109
    .line 1110
    mul-int/2addr v3, v4

    .line 1111
    iget v4, v2, Lvh3;->e:I

    .line 1112
    .line 1113
    add-int/2addr v4, v3

    .line 1114
    iput v4, v2, Lvh3;->e:I

    .line 1115
    .line 1116
    :goto_18
    iget v3, v12, Loh3;->g:I

    .line 1117
    .line 1118
    sub-int/2addr v7, v3

    .line 1119
    move/from16 v5, v24

    .line 1120
    .line 1121
    move/from16 v3, v26

    .line 1122
    .line 1123
    const/high16 v4, -0x80000000

    .line 1124
    .line 1125
    goto/16 :goto_0

    .line 1126
    .line 1127
    :goto_19
    iget v3, v2, Lvh3;->a:I

    .line 1128
    .line 1129
    sub-int/2addr v3, v8

    .line 1130
    iput v3, v2, Lvh3;->a:I

    .line 1131
    .line 1132
    iget v4, v2, Lvh3;->f:I

    .line 1133
    .line 1134
    const/high16 v5, -0x80000000

    .line 1135
    .line 1136
    if-eq v4, v5, :cond_27

    .line 1137
    .line 1138
    add-int/2addr v4, v8

    .line 1139
    iput v4, v2, Lvh3;->f:I

    .line 1140
    .line 1141
    if-gez v3, :cond_26

    .line 1142
    .line 1143
    add-int/2addr v4, v3

    .line 1144
    iput v4, v2, Lvh3;->f:I

    .line 1145
    .line 1146
    :cond_26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f1(Lvg6;Lvh3;)V

    .line 1147
    .line 1148
    .line 1149
    :cond_27
    iget v0, v2, Lvh3;->a:I

    .line 1150
    .line 1151
    sub-int v3, v26, v0

    .line 1152
    .line 1153
    return v3
.end method

.method public final V()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final V0(I)Landroid/view/View;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a1(III)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 18
    .line 19
    iget-object v1, v1, Lrh3;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, [I

    .line 22
    .line 23
    aget v0, v1, v0

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Loh3;

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->W0(Landroid/view/View;Loh3;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final W0(Landroid/view/View;Loh3;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p2, p2, Loh3;->h:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    :goto_0
    if-ge v1, p2, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/16 v4, 0x8

    .line 21
    .line 22
    if-ne v3, v4, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 32
    .line 33
    invoke-virtual {v3, p1}, Lgu2;->d(Landroid/view/View;)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Lgu2;->d(Landroid/view/View;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ge v3, v4, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Lgu2;->g(Landroid/view/View;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Lgu2;->g(Landroid/view/View;)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-le v3, v4, :cond_2

    .line 59
    .line 60
    :goto_1
    move-object p1, v2

    .line 61
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    return-object p1
.end method

.method public final X0(I)Landroid/view/View;
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
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a1(III)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 21
    .line 22
    iget-object v1, v1, Lrh3;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, [I

    .line 25
    .line 26
    aget v0, v1, v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Loh3;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y0(Landroid/view/View;Loh3;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final Y0(Landroid/view/View;Loh3;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget p2, p2, Loh3;->h:I

    .line 16
    .line 17
    sub-int/2addr v2, p2

    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 19
    .line 20
    :goto_0
    if-le v1, v2, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0x8

    .line 33
    .line 34
    if-ne v3, v4, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Lgu2;->g(Landroid/view/View;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 50
    .line 51
    invoke-virtual {v4, p2}, Lgu2;->g(Landroid/view/View;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-le v3, v4, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Lgu2;->d(Landroid/view/View;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 65
    .line 66
    invoke-virtual {v4, p2}, Lgu2;->d(Landroid/view/View;)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-ge v3, v4, :cond_2

    .line 71
    .line 72
    :goto_1
    move-object p1, p2

    .line 73
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    return-object p1
.end method

.method public final Z0(II)Landroid/view/View;
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    if-le p2, p1, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, -0x1

    .line 7
    :goto_0
    if-eq p1, p2, :cond_6

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingLeft()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget v5, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    sub-int/2addr v5, v6

    .line 28
    iget v6, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingBottom()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    sub-int/2addr v6, v7

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Lqg6;

    .line 40
    .line 41
    invoke-static {v2}, Landroidx/recyclerview/widget/a;->L(Landroid/view/View;)I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 46
    .line 47
    sub-int/2addr v8, v7

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lqg6;

    .line 53
    .line 54
    invoke-static {v2}, Landroidx/recyclerview/widget/a;->P(Landroid/view/View;)I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 59
    .line 60
    sub-int/2addr v9, v7

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Lqg6;

    .line 66
    .line 67
    invoke-static {v2}, Landroidx/recyclerview/widget/a;->O(Landroid/view/View;)I

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 72
    .line 73
    add-int/2addr v10, v7

    .line 74
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Lqg6;

    .line 79
    .line 80
    invoke-static {v2}, Landroidx/recyclerview/widget/a;->J(Landroid/view/View;)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 85
    .line 86
    add-int/2addr v11, v7

    .line 87
    const/4 v7, 0x0

    .line 88
    if-ge v8, v5, :cond_2

    .line 89
    .line 90
    if-lt v10, v3, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    move v3, v7

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    :goto_1
    move v3, v0

    .line 96
    :goto_2
    if-ge v9, v6, :cond_3

    .line 97
    .line 98
    if-lt v11, v4, :cond_4

    .line 99
    .line 100
    :cond_3
    move v7, v0

    .line 101
    :cond_4
    if-eqz v3, :cond_5

    .line 102
    .line 103
    if-eqz v7, :cond_5

    .line 104
    .line 105
    return-object v2

    .line 106
    :cond_5
    add-int/2addr p1, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    const/4 p0, 0x0

    .line 109
    return-object p0
.end method

.method public final a(I)Landroid/graphics/PointF;
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
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :goto_0
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_1
    invoke-static {v0}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge p1, v0, :cond_2

    .line 22
    .line 23
    const/4 p1, -0x1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/4 p1, 0x1

    .line 26
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    new-instance p0, Landroid/graphics/PointF;

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_3
    new-instance p0, Landroid/graphics/PointF;

    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public final a1(III)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->T0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lvh3;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput v1, v0, Lvh3;->h:I

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 19
    .line 20
    invoke-virtual {v0}, Lgu2;->m()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 25
    .line 26
    invoke-virtual {v2}, Lgu2;->i()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-le p2, p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, -0x1

    .line 34
    :goto_0
    const/4 v3, 0x0

    .line 35
    move-object v4, v3

    .line 36
    :goto_1
    if-eq p1, p2, :cond_7

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    invoke-static {v5}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-ltz v6, :cond_6

    .line 50
    .line 51
    if-ge v6, p3, :cond_6

    .line 52
    .line 53
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lqg6;

    .line 58
    .line 59
    iget-object v6, v6, Lqg6;->a:Lfh6;

    .line 60
    .line 61
    invoke-virtual {v6}, Lfh6;->i()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    if-nez v4, :cond_6

    .line 68
    .line 69
    move-object v4, v5

    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 72
    .line 73
    invoke-virtual {v6, v5}, Lgu2;->g(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-lt v6, v0, :cond_5

    .line 78
    .line 79
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 80
    .line 81
    invoke-virtual {v6, v5}, Lgu2;->d(Landroid/view/View;)I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-le v6, v2, :cond_4

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    return-object v5

    .line 89
    :cond_5
    :goto_2
    if-nez v3, :cond_6

    .line 90
    .line 91
    move-object v3, v5

    .line 92
    :cond_6
    :goto_3
    add-int/2addr p1, v1

    .line 93
    goto :goto_1

    .line 94
    :cond_7
    if-eqz v3, :cond_8

    .line 95
    .line 96
    return-object v3

    .line 97
    :cond_8
    return-object v4
.end method

.method public final b(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final b0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b1(ILvg6;Lbh6;Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lgu2;->m()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int v0, p1, v0

    .line 18
    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d1(ILvg6;Lbh6;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 27
    .line 28
    invoke-virtual {v0}, Lgu2;->i()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sub-int/2addr v0, p1

    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    neg-int v0, v0

    .line 36
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d1(ILvg6;Lbh6;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    neg-int p2, p2

    .line 41
    :goto_0
    add-int/2addr p1, p2

    .line 42
    if-eqz p4, :cond_1

    .line 43
    .line 44
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 45
    .line 46
    invoke-virtual {p3}, Lgu2;->i()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    sub-int/2addr p3, p1

    .line 51
    if-lez p3, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 54
    .line 55
    invoke-virtual {p0, p3}, Lgu2;->r(I)V

    .line 56
    .line 57
    .line 58
    add-int/2addr p3, p2

    .line 59
    return p3

    .line 60
    :cond_1
    return p2

    .line 61
    :cond_2
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final c(III)I
    .locals 1

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/a;->t:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/a;->H(ZIIII)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final c0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0:Landroid/view/View;

    .line 8
    .line 9
    return-void
.end method

.method public final c1(ILvg6;Lbh6;Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 12
    .line 13
    invoke-virtual {v0}, Lgu2;->i()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int/2addr v0, p1

    .line 18
    if-lez v0, :cond_2

    .line 19
    .line 20
    neg-int v0, v0

    .line 21
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d1(ILvg6;Lbh6;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 27
    .line 28
    invoke-virtual {v0}, Lgu2;->m()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sub-int v0, p1, v0

    .line 33
    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d1(ILvg6;Lbh6;)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    neg-int p2, p2

    .line 41
    :goto_0
    add-int/2addr p1, p2

    .line 42
    if-eqz p4, :cond_1

    .line 43
    .line 44
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 45
    .line 46
    invoke-virtual {p3}, Lgu2;->m()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    sub-int/2addr p1, p3

    .line 51
    if-lez p1, :cond_1

    .line 52
    .line 53
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 54
    .line 55
    neg-int p3, p1

    .line 56
    invoke-virtual {p0, p3}, Lgu2;->r(I)V

    .line 57
    .line 58
    .line 59
    sub-int/2addr p2, p1

    .line 60
    :cond_1
    return p2

    .line 61
    :cond_2
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final d(Landroid/view/View;IILoh3;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/google/android/flexbox/FlexboxLayoutManager;->g0:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/a;->n(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lqg6;

    .line 17
    .line 18
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lqg6;

    .line 27
    .line 28
    iget-object p1, p1, Lqg6;->b:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    add-int/2addr p0, p1

    .line 33
    iget p1, p4, Loh3;->e:I

    .line 34
    .line 35
    add-int/2addr p1, p0

    .line 36
    iput p1, p4, Loh3;->e:I

    .line 37
    .line 38
    iget p1, p4, Loh3;->f:I

    .line 39
    .line 40
    add-int/2addr p1, p0

    .line 41
    iput p1, p4, Loh3;->f:I

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lqg6;

    .line 49
    .line 50
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 51
    .line 52
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lqg6;

    .line 59
    .line 60
    iget-object p1, p1, Lqg6;->b:Landroid/graphics/Rect;

    .line 61
    .line 62
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 63
    .line 64
    add-int/2addr p0, p1

    .line 65
    iget p1, p4, Loh3;->e:I

    .line 66
    .line 67
    add-int/2addr p1, p0

    .line 68
    iput p1, p4, Loh3;->e:I

    .line 69
    .line 70
    iget p1, p4, Loh3;->f:I

    .line 71
    .line 72
    add-int/2addr p1, p0

    .line 73
    iput p1, p4, Loh3;->f:I

    .line 74
    .line 75
    return-void
.end method

.method public final d0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d1(ILvg6;Lbh6;)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_14

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_c

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->T0()V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    iput-boolean v3, v1, Lvh3;->i:Z

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move v1, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v1, v2

    .line 35
    :goto_0
    const/4 v4, -0x1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    if-gez p1, :cond_2

    .line 39
    .line 40
    :goto_1
    move v5, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move v5, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    if-lez p1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :goto_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 52
    .line 53
    iput v5, v7, Lvh3;->h:I

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    iget v8, v0, Landroidx/recyclerview/widget/a;->y:I

    .line 60
    .line 61
    iget v9, v0, Landroidx/recyclerview/widget/a;->t:I

    .line 62
    .line 63
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    iget v8, v0, Landroidx/recyclerview/widget/a;->G:I

    .line 68
    .line 69
    iget v9, v0, Landroidx/recyclerview/widget/a;->x:I

    .line 70
    .line 71
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    if-nez v7, :cond_4

    .line 76
    .line 77
    iget-boolean v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 78
    .line 79
    if-eqz v8, :cond_4

    .line 80
    .line 81
    move v8, v3

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    move v8, v2

    .line 84
    :goto_3
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 85
    .line 86
    if-ne v5, v3, :cond_a

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    sub-int/2addr v10, v3

    .line 93
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    if-nez v10, :cond_5

    .line 98
    .line 99
    goto/16 :goto_a

    .line 100
    .line 101
    :cond_5
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 102
    .line 103
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 104
    .line 105
    invoke-virtual {v14, v10}, Lgu2;->d(Landroid/view/View;)I

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    iput v14, v11, Lvh3;->e:I

    .line 110
    .line 111
    invoke-static {v10}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    iget-object v14, v9, Lrh3;->c:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v14, [I

    .line 118
    .line 119
    aget v14, v14, v11

    .line 120
    .line 121
    iget-object v15, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v14

    .line 127
    check-cast v14, Loh3;

    .line 128
    .line 129
    invoke-virtual {v0, v10, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y0(Landroid/view/View;Loh3;)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    iget-object v14, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 134
    .line 135
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    add-int/2addr v11, v3

    .line 139
    iput v11, v14, Lvh3;->d:I

    .line 140
    .line 141
    iget-object v15, v9, Lrh3;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v15, [I

    .line 144
    .line 145
    move/from16 v16, v3

    .line 146
    .line 147
    array-length v3, v15

    .line 148
    if-gt v3, v11, :cond_6

    .line 149
    .line 150
    iput v4, v14, Lvh3;->c:I

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    aget v3, v15, v11

    .line 154
    .line 155
    iput v3, v14, Lvh3;->c:I

    .line 156
    .line 157
    :goto_4
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 158
    .line 159
    if-eqz v8, :cond_7

    .line 160
    .line 161
    invoke-virtual {v3, v10}, Lgu2;->g(Landroid/view/View;)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    iput v3, v14, Lvh3;->e:I

    .line 166
    .line 167
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 168
    .line 169
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 170
    .line 171
    invoke-virtual {v8, v10}, Lgu2;->g(Landroid/view/View;)I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    neg-int v8, v8

    .line 176
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 177
    .line 178
    invoke-virtual {v10}, Lgu2;->m()I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    add-int/2addr v10, v8

    .line 183
    iput v10, v3, Lvh3;->f:I

    .line 184
    .line 185
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 186
    .line 187
    iget v8, v3, Lvh3;->f:I

    .line 188
    .line 189
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    iput v8, v3, Lvh3;->f:I

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_7
    invoke-virtual {v3, v10}, Lgu2;->d(Landroid/view/View;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    iput v3, v14, Lvh3;->e:I

    .line 201
    .line 202
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 203
    .line 204
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 205
    .line 206
    invoke-virtual {v8, v10}, Lgu2;->d(Landroid/view/View;)I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 211
    .line 212
    invoke-virtual {v10}, Lgu2;->i()I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    sub-int/2addr v8, v10

    .line 217
    iput v8, v3, Lvh3;->f:I

    .line 218
    .line 219
    :goto_5
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 220
    .line 221
    iget v3, v3, Lvh3;->c:I

    .line 222
    .line 223
    if-eq v3, v4, :cond_8

    .line 224
    .line 225
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 226
    .line 227
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    add-int/lit8 v4, v4, -0x1

    .line 232
    .line 233
    if-le v3, v4, :cond_10

    .line 234
    .line 235
    :cond_8
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 236
    .line 237
    iget v3, v3, Lvh3;->d:I

    .line 238
    .line 239
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->R:Lbh6;

    .line 240
    .line 241
    invoke-virtual {v4}, Lbh6;->b()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-gt v3, v4, :cond_10

    .line 246
    .line 247
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 248
    .line 249
    iget v4, v3, Lvh3;->f:I

    .line 250
    .line 251
    sub-int v14, v6, v4

    .line 252
    .line 253
    const/4 v4, 0x0

    .line 254
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 255
    .line 256
    iput-object v4, v11, Lph3;->b:Ljava/util/List;

    .line 257
    .line 258
    iput v2, v11, Lph3;->a:I

    .line 259
    .line 260
    if-lez v14, :cond_10

    .line 261
    .line 262
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 263
    .line 264
    if-eqz v7, :cond_9

    .line 265
    .line 266
    iget v15, v3, Lvh3;->d:I

    .line 267
    .line 268
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 269
    .line 270
    const/16 v16, -0x1

    .line 271
    .line 272
    move-object/from16 v17, v3

    .line 273
    .line 274
    invoke-virtual/range {v10 .. v17}, Lrh3;->b(Lph3;IIIIILjava/util/List;)V

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_9
    iget v15, v3, Lvh3;->d:I

    .line 279
    .line 280
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 281
    .line 282
    const/16 v16, -0x1

    .line 283
    .line 284
    move/from16 v17, v13

    .line 285
    .line 286
    move v13, v12

    .line 287
    move/from16 v12, v17

    .line 288
    .line 289
    move-object/from16 v17, v3

    .line 290
    .line 291
    invoke-virtual/range {v10 .. v17}, Lrh3;->b(Lph3;IIIIILjava/util/List;)V

    .line 292
    .line 293
    .line 294
    move/from16 v18, v13

    .line 295
    .line 296
    move v13, v12

    .line 297
    move/from16 v12, v18

    .line 298
    .line 299
    :goto_6
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 300
    .line 301
    iget v3, v3, Lvh3;->d:I

    .line 302
    .line 303
    invoke-virtual {v9, v12, v13, v3}, Lrh3;->h(III)V

    .line 304
    .line 305
    .line 306
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 307
    .line 308
    iget v3, v3, Lvh3;->d:I

    .line 309
    .line 310
    invoke-virtual {v9, v3}, Lrh3;->w(I)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_9

    .line 314
    .line 315
    :cond_a
    move/from16 v16, v3

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    if-nez v3, :cond_b

    .line 322
    .line 323
    goto/16 :goto_a

    .line 324
    .line 325
    :cond_b
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 326
    .line 327
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 328
    .line 329
    invoke-virtual {v10, v3}, Lgu2;->g(Landroid/view/View;)I

    .line 330
    .line 331
    .line 332
    move-result v10

    .line 333
    iput v10, v7, Lvh3;->e:I

    .line 334
    .line 335
    invoke-static {v3}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    iget-object v10, v9, Lrh3;->c:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v10, [I

    .line 342
    .line 343
    aget v10, v10, v7

    .line 344
    .line 345
    iget-object v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 346
    .line 347
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v10

    .line 351
    check-cast v10, Loh3;

    .line 352
    .line 353
    invoke-virtual {v0, v3, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;->W0(Landroid/view/View;Loh3;)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 358
    .line 359
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    .line 361
    .line 362
    iget-object v9, v9, Lrh3;->c:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v9, [I

    .line 365
    .line 366
    aget v9, v9, v7

    .line 367
    .line 368
    if-ne v9, v4, :cond_c

    .line 369
    .line 370
    move v9, v2

    .line 371
    :cond_c
    if-lez v9, :cond_d

    .line 372
    .line 373
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 374
    .line 375
    add-int/lit8 v10, v9, -0x1

    .line 376
    .line 377
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v4

    .line 381
    check-cast v4, Loh3;

    .line 382
    .line 383
    iget-object v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 384
    .line 385
    iget v4, v4, Loh3;->h:I

    .line 386
    .line 387
    sub-int/2addr v7, v4

    .line 388
    iput v7, v10, Lvh3;->d:I

    .line 389
    .line 390
    goto :goto_7

    .line 391
    :cond_d
    iput v4, v10, Lvh3;->d:I

    .line 392
    .line 393
    :goto_7
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 394
    .line 395
    if-lez v9, :cond_e

    .line 396
    .line 397
    add-int/lit8 v9, v9, -0x1

    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_e
    move v9, v2

    .line 401
    :goto_8
    iput v9, v4, Lvh3;->c:I

    .line 402
    .line 403
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 404
    .line 405
    if-eqz v8, :cond_f

    .line 406
    .line 407
    invoke-virtual {v7, v3}, Lgu2;->d(Landroid/view/View;)I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    iput v7, v4, Lvh3;->e:I

    .line 412
    .line 413
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 414
    .line 415
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 416
    .line 417
    invoke-virtual {v7, v3}, Lgu2;->d(Landroid/view/View;)I

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 422
    .line 423
    invoke-virtual {v7}, Lgu2;->i()I

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    sub-int/2addr v3, v7

    .line 428
    iput v3, v4, Lvh3;->f:I

    .line 429
    .line 430
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 431
    .line 432
    iget v4, v3, Lvh3;->f:I

    .line 433
    .line 434
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    iput v4, v3, Lvh3;->f:I

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_f
    invoke-virtual {v7, v3}, Lgu2;->g(Landroid/view/View;)I

    .line 442
    .line 443
    .line 444
    move-result v7

    .line 445
    iput v7, v4, Lvh3;->e:I

    .line 446
    .line 447
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 448
    .line 449
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 450
    .line 451
    invoke-virtual {v7, v3}, Lgu2;->g(Landroid/view/View;)I

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    neg-int v3, v3

    .line 456
    iget-object v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 457
    .line 458
    invoke-virtual {v7}, Lgu2;->m()I

    .line 459
    .line 460
    .line 461
    move-result v7

    .line 462
    add-int/2addr v7, v3

    .line 463
    iput v7, v4, Lvh3;->f:I

    .line 464
    .line 465
    :cond_10
    :goto_9
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 466
    .line 467
    iget v4, v3, Lvh3;->f:I

    .line 468
    .line 469
    sub-int v4, v6, v4

    .line 470
    .line 471
    iput v4, v3, Lvh3;->a:I

    .line 472
    .line 473
    :goto_a
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 474
    .line 475
    iget v4, v3, Lvh3;->f:I

    .line 476
    .line 477
    move-object/from16 v7, p2

    .line 478
    .line 479
    move-object/from16 v8, p3

    .line 480
    .line 481
    invoke-virtual {v0, v7, v8, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->U0(Lvg6;Lbh6;Lvh3;)I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    add-int/2addr v3, v4

    .line 486
    if-gez v3, :cond_11

    .line 487
    .line 488
    goto :goto_c

    .line 489
    :cond_11
    if-eqz v1, :cond_13

    .line 490
    .line 491
    if-le v6, v3, :cond_12

    .line 492
    .line 493
    neg-int v1, v5

    .line 494
    mul-int/2addr v1, v3

    .line 495
    goto :goto_b

    .line 496
    :cond_12
    move/from16 v1, p1

    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_13
    if-le v6, v3, :cond_12

    .line 500
    .line 501
    mul-int v1, v5, v3

    .line 502
    .line 503
    :goto_b
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 504
    .line 505
    neg-int v3, v1

    .line 506
    invoke-virtual {v2, v3}, Lgu2;->r(I)V

    .line 507
    .line 508
    .line 509
    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 510
    .line 511
    iput v1, v0, Lvh3;->g:I

    .line 512
    .line 513
    return v1

    .line 514
    :cond_14
    :goto_c
    return v2
.end method

.method public final e(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q:Lvg6;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lvg6;->d(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final e1(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->T0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    :goto_0
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget v0, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 36
    .line 37
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 45
    .line 46
    if-ne v2, v3, :cond_4

    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-gez p1, :cond_3

    .line 53
    .line 54
    iget p0, p0, Lth3;->d:I

    .line 55
    .line 56
    add-int/2addr v0, p0

    .line 57
    sub-int/2addr v0, v1

    .line 58
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    neg-int p0, p0

    .line 63
    return p0

    .line 64
    :cond_3
    iget p0, p0, Lth3;->d:I

    .line 65
    .line 66
    add-int v0, p0, p1

    .line 67
    .line 68
    if-lez v0, :cond_6

    .line 69
    .line 70
    neg-int p0, p0

    .line 71
    return p0

    .line 72
    :cond_4
    if-lez p1, :cond_5

    .line 73
    .line 74
    iget p0, p0, Lth3;->d:I

    .line 75
    .line 76
    sub-int/2addr v0, p0

    .line 77
    sub-int/2addr v0, v1

    .line 78
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    return p0

    .line 83
    :cond_5
    iget p0, p0, Lth3;->d:I

    .line 84
    .line 85
    add-int v0, p0, p1

    .line 86
    .line 87
    if-ltz v0, :cond_7

    .line 88
    .line 89
    :cond_6
    return p1

    .line 90
    :cond_7
    neg-int p0, p0

    .line 91
    return p0

    .line 92
    :cond_8
    :goto_2
    const/4 p0, 0x0

    .line 93
    return p0
.end method

.method public final f(Landroid/view/View;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lqg6;

    .line 12
    .line 13
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lqg6;

    .line 22
    .line 23
    iget-object p1, p1, Lqg6;->b:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    :goto_0
    add-int/2addr p0, p1

    .line 28
    return p0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lqg6;

    .line 34
    .line 35
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lqg6;

    .line 44
    .line 45
    iget-object p1, p1, Lqg6;->b:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 48
    .line 49
    goto :goto_0
.end method

.method public final f1(Lvg6;Lvh3;)V
    .locals 9

    .line 1
    iget-boolean v0, p2, Lvh3;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_8

    .line 6
    .line 7
    :cond_0
    iget v0, p2, Lvh3;->h:I

    .line 8
    .line 9
    iget v1, p2, Lvh3;->f:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne v0, v3, :cond_a

    .line 15
    .line 16
    if-gez v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_8

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto/16 :goto_8

    .line 27
    .line 28
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-nez v4, :cond_3

    .line 35
    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :cond_3
    iget-object v2, v2, Lrh3;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, [I

    .line 41
    .line 42
    invoke-static {v4}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    aget v2, v2, v4

    .line 47
    .line 48
    if-ne v2, v3, :cond_4

    .line 49
    .line 50
    goto/16 :goto_8

    .line 51
    .line 52
    :cond_4
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Loh3;

    .line 59
    .line 60
    move v4, v1

    .line 61
    :goto_0
    if-ltz v4, :cond_9

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    if-nez v5, :cond_5

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    iget v6, p2, Lvh3;->f:I

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-nez v7, :cond_6

    .line 77
    .line 78
    iget-boolean v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 79
    .line 80
    if-eqz v7, :cond_6

    .line 81
    .line 82
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 83
    .line 84
    invoke-virtual {v7, v5}, Lgu2;->d(Landroid/view/View;)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-gt v7, v6, :cond_9

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 92
    .line 93
    invoke-virtual {v7, v5}, Lgu2;->g(Landroid/view/View;)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 98
    .line 99
    invoke-virtual {v8}, Lgu2;->h()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    sub-int/2addr v8, v6

    .line 104
    if-lt v7, v8, :cond_9

    .line 105
    .line 106
    :goto_1
    iget v6, v3, Loh3;->o:I

    .line 107
    .line 108
    invoke-static {v5}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-ne v6, v5, :cond_8

    .line 113
    .line 114
    if-gtz v2, :cond_7

    .line 115
    .line 116
    move v0, v4

    .line 117
    goto :goto_3

    .line 118
    :cond_7
    iget v0, p2, Lvh3;->h:I

    .line 119
    .line 120
    add-int/2addr v2, v0

    .line 121
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Loh3;

    .line 128
    .line 129
    move-object v3, v0

    .line 130
    move v0, v4

    .line 131
    :cond_8
    :goto_2
    add-int/lit8 v4, v4, -0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_9
    :goto_3
    if-lt v1, v0, :cond_14

    .line 135
    .line 136
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/a;->z0(ILvg6;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v1, v1, -0x1

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_a
    if-gez v1, :cond_b

    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_c

    .line 151
    .line 152
    goto/16 :goto_8

    .line 153
    .line 154
    :cond_c
    const/4 v1, 0x0

    .line 155
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    if-nez v4, :cond_d

    .line 160
    .line 161
    goto/16 :goto_8

    .line 162
    .line 163
    :cond_d
    iget-object v2, v2, Lrh3;->c:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v2, [I

    .line 166
    .line 167
    invoke-static {v4}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    aget v2, v2, v4

    .line 172
    .line 173
    if-ne v2, v3, :cond_e

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_e
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Loh3;

    .line 183
    .line 184
    :goto_4
    if-ge v1, v0, :cond_13

    .line 185
    .line 186
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    if-nez v5, :cond_f

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_f
    iget v6, p2, Lvh3;->f:I

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_10

    .line 200
    .line 201
    iget-boolean v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 202
    .line 203
    if-eqz v7, :cond_10

    .line 204
    .line 205
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 206
    .line 207
    invoke-virtual {v7}, Lgu2;->h()I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 212
    .line 213
    invoke-virtual {v8, v5}, Lgu2;->g(Landroid/view/View;)I

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    sub-int/2addr v7, v8

    .line 218
    if-gt v7, v6, :cond_13

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_10
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 222
    .line 223
    invoke-virtual {v7, v5}, Lgu2;->d(Landroid/view/View;)I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-gt v7, v6, :cond_13

    .line 228
    .line 229
    :goto_5
    iget v6, v4, Loh3;->p:I

    .line 230
    .line 231
    invoke-static {v5}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-ne v6, v5, :cond_12

    .line 236
    .line 237
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    add-int/lit8 v3, v3, -0x1

    .line 244
    .line 245
    if-lt v2, v3, :cond_11

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_11
    iget v3, p2, Lvh3;->h:I

    .line 249
    .line 250
    add-int/2addr v2, v3

    .line 251
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Loh3;

    .line 258
    .line 259
    move-object v4, v3

    .line 260
    move v3, v1

    .line 261
    :cond_12
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_13
    move v1, v3

    .line 265
    :goto_7
    if-ltz v1, :cond_14

    .line 266
    .line 267
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/a;->z0(ILvg6;)V

    .line 268
    .line 269
    .line 270
    add-int/lit8 v1, v1, -0x1

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_14
    :goto_8
    return-void
.end method

.method public final g(III)I
    .locals 1

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 2
    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/a;->x:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/a;->H(ZIIII)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final g1(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->v0()V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 21
    .line 22
    invoke-static {p1}, Lth3;->b(Lth3;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p1, Lth3;->d:I

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final getAlignContent()I
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    return p0
.end method

.method public final getAlignItems()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFlexDirection()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFlexItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->R:Lbh6;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbh6;->b()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getFlexLinesInternal()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFlexWrap()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 2
    .line 3
    return p0
.end method

.method public final getLargestMainSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/high16 v2, -0x80000000

    .line 18
    .line 19
    :goto_0
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Loh3;

    .line 28
    .line 29
    iget v3, v3, Loh3;->e:I

    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v2
.end method

.method public final getMaxLine()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:I

    .line 2
    .line 3
    return p0
.end method

.method public final getSumOfCrossSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Loh3;

    .line 18
    .line 19
    iget v3, v3, Loh3;->g:I

    .line 20
    .line 21
    add-int/2addr v2, v3

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v2
.end method

.method public final h(Loh3;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h1(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 5
    .line 6
    if-eq v0, p1, :cond_2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->v0()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 21
    .line 22
    invoke-static {v0}, Lth3;->b(Lth3;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput v1, v0, Lth3;->d:I

    .line 27
    .line 28
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void

    .line 39
    :cond_3
    const-string p0, "wrap_reverse is not supported in FlexboxLayoutManager"

    .line 40
    .line 41
    invoke-static {p0}, Lg84;->j(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final i(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final i1(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    :goto_0
    return v0
.end method

.method public final j0(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j1(Landroid/view/View;IILuh3;)Z
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
    invoke-static {p0, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->X(III)Z

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
    invoke-static {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->X(III)Z

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

.method public final k(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lqg6;

    .line 12
    .line 13
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 14
    .line 15
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lqg6;

    .line 22
    .line 23
    iget-object p1, p1, Lqg6;->b:Landroid/graphics/Rect;

    .line 24
    .line 25
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    :goto_0
    add-int/2addr p0, p1

    .line 28
    return p0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lqg6;

    .line 34
    .line 35
    iget-object p0, p0, Lqg6;->b:Landroid/graphics/Rect;

    .line 36
    .line 37
    iget p0, p0, Landroid/graphics/Rect;->left:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lqg6;

    .line 44
    .line 45
    iget-object p1, p1, Lqg6;->b:Landroid/graphics/Rect;

    .line 46
    .line 47
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 48
    .line 49
    goto :goto_0
.end method

.method public final k1(I)V
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
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Z0(II)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    if-lt p1, v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lrh3;->j(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lrh3;->k(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lrh3;->i(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v1, Lrh3;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, [I

    .line 40
    .line 41
    array-length v0, v0

    .line 42
    if-lt p1, v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0:I

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    :goto_1
    return-void

    .line 55
    :cond_3
    invoke-static {p1}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Lgu2;->d(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 78
    .line 79
    invoke-virtual {v0}, Lgu2;->j()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/2addr v0, p1

    .line 84
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 85
    .line 86
    return-void

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lgu2;->g(Landroid/view/View;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 94
    .line 95
    invoke-virtual {v0}, Lgu2;->m()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    sub-int/2addr p1, v0

    .line 100
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 101
    .line 102
    return-void
.end method

.method public final l0(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k1(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final l1(Lth3;ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p3, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget p3, p0, Landroidx/recyclerview/widget/a;->x:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/a;->t:I

    .line 17
    .line 18
    :goto_0
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    if-ne p3, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    move v0, v2

    .line 25
    :cond_2
    iput-boolean v0, v3, Lvh3;->b:Z

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 29
    .line 30
    iput-boolean v0, p3, Lvh3;->b:Z

    .line 31
    .line 32
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-nez p3, :cond_4

    .line 37
    .line 38
    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 39
    .line 40
    if-eqz p3, :cond_4

    .line 41
    .line 42
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 43
    .line 44
    iget v0, p1, Lth3;->c:I

    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->getPaddingRight()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v0, v3

    .line 51
    iput v0, p3, Lvh3;->a:I

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 57
    .line 58
    invoke-virtual {v0}, Lgu2;->i()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v3, p1, Lth3;->c:I

    .line 63
    .line 64
    sub-int/2addr v0, v3

    .line 65
    iput v0, p3, Lvh3;->a:I

    .line 66
    .line 67
    :goto_2
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 68
    .line 69
    iget v0, p1, Lth3;->a:I

    .line 70
    .line 71
    iput v0, p3, Lvh3;->d:I

    .line 72
    .line 73
    iput v2, p3, Lvh3;->h:I

    .line 74
    .line 75
    iget v0, p1, Lth3;->c:I

    .line 76
    .line 77
    iput v0, p3, Lvh3;->e:I

    .line 78
    .line 79
    iput v1, p3, Lvh3;->f:I

    .line 80
    .line 81
    iget v0, p1, Lth3;->b:I

    .line 82
    .line 83
    iput v0, p3, Lvh3;->c:I

    .line 84
    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-le p2, v2, :cond_5

    .line 94
    .line 95
    iget p2, p1, Lth3;->b:I

    .line 96
    .line 97
    if-ltz p2, :cond_5

    .line 98
    .line 99
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    sub-int/2addr p3, v2

    .line 106
    if-ge p2, p3, :cond_5

    .line 107
    .line 108
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 109
    .line 110
    iget p1, p1, Lth3;->b:I

    .line 111
    .line 112
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Loh3;

    .line 117
    .line 118
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 119
    .line 120
    iget p2, p0, Lvh3;->c:I

    .line 121
    .line 122
    add-int/2addr p2, v2

    .line 123
    iput p2, p0, Lvh3;->c:I

    .line 124
    .line 125
    iget p1, p1, Loh3;->h:I

    .line 126
    .line 127
    iget p2, p0, Lvh3;->d:I

    .line 128
    .line 129
    add-int/2addr p2, p1

    .line 130
    iput p2, p0, Lvh3;->d:I

    .line 131
    .line 132
    :cond_5
    return-void
.end method

.method public final m0(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final m1(Lth3;ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p3, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    iget p3, p0, Landroidx/recyclerview/widget/a;->x:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p3, p0, Landroidx/recyclerview/widget/a;->t:I

    .line 17
    .line 18
    :goto_0
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 19
    .line 20
    if-eqz p3, :cond_1

    .line 21
    .line 22
    if-ne p3, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    move v0, v2

    .line 25
    :cond_2
    iput-boolean v0, v3, Lvh3;->b:Z

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 29
    .line 30
    iput-boolean v0, p3, Lvh3;->b:Z

    .line 31
    .line 32
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    if-nez p3, :cond_4

    .line 37
    .line 38
    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 39
    .line 40
    if-eqz p3, :cond_4

    .line 41
    .line 42
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget v3, p1, Lth3;->c:I

    .line 51
    .line 52
    sub-int/2addr v0, v3

    .line 53
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 54
    .line 55
    invoke-virtual {v3}, Lgu2;->m()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    sub-int/2addr v0, v3

    .line 60
    iput v0, p3, Lvh3;->a:I

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 64
    .line 65
    iget v0, p1, Lth3;->c:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 68
    .line 69
    invoke-virtual {v3}, Lgu2;->m()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    sub-int/2addr v0, v3

    .line 74
    iput v0, p3, Lvh3;->a:I

    .line 75
    .line 76
    :goto_2
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 77
    .line 78
    iget v0, p1, Lth3;->a:I

    .line 79
    .line 80
    iput v0, p3, Lvh3;->d:I

    .line 81
    .line 82
    const/4 v0, -0x1

    .line 83
    iput v0, p3, Lvh3;->h:I

    .line 84
    .line 85
    iget v0, p1, Lth3;->c:I

    .line 86
    .line 87
    iput v0, p3, Lvh3;->e:I

    .line 88
    .line 89
    iput v1, p3, Lvh3;->f:I

    .line 90
    .line 91
    iget v0, p1, Lth3;->b:I

    .line 92
    .line 93
    iput v0, p3, Lvh3;->c:I

    .line 94
    .line 95
    if-eqz p2, :cond_5

    .line 96
    .line 97
    if-lez v0, :cond_5

    .line 98
    .line 99
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    iget p1, p1, Lth3;->b:I

    .line 106
    .line 107
    if-le p2, p1, :cond_5

    .line 108
    .line 109
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Loh3;

    .line 116
    .line 117
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 118
    .line 119
    iget p2, p0, Lvh3;->c:I

    .line 120
    .line 121
    sub-int/2addr p2, v2

    .line 122
    iput p2, p0, Lvh3;->c:I

    .line 123
    .line 124
    iget p1, p1, Loh3;->h:I

    .line 125
    .line 126
    iget p2, p0, Lvh3;->d:I

    .line 127
    .line 128
    sub-int/2addr p2, p1

    .line 129
    iput p2, p0, Lvh3;->d:I

    .line 130
    .line 131
    :cond_5
    return-void
.end method

.method public final n0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget v0, p0, Landroidx/recyclerview/widget/a;->y:I

    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0:Landroid/view/View;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move p0, v1

    .line 29
    :goto_0
    if-le v0, p0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    return v1

    .line 33
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public final o0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k1(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k1(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final p()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    xor-int/2addr p0, v1

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget v0, p0, Landroidx/recyclerview/widget/a;->G:I

    .line 19
    .line 20
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0:Landroid/view/View;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move p0, v2

    .line 31
    :goto_0
    if-le v0, p0, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    return v2

    .line 35
    :cond_3
    :goto_1
    return v1
.end method

.method public final p0(Lvg6;Lbh6;)V
    .locals 21

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
    iput-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q:Lvg6;

    .line 8
    .line 9
    iput-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->R:Lbh6;

    .line 10
    .line 11
    invoke-virtual {v2}, Lbh6;->b()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    iget-boolean v4, v2, Lbh6;->g:Z

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1b

    .line 22
    .line 23
    :cond_0
    iget-object v4, v0, Landroidx/recyclerview/widget/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:I

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x2

    .line 34
    if-eqz v5, :cond_a

    .line 35
    .line 36
    if-eq v5, v6, :cond_7

    .line 37
    .line 38
    if-eq v5, v8, :cond_4

    .line 39
    .line 40
    const/4 v9, 0x3

    .line 41
    if-eq v5, v9, :cond_1

    .line 42
    .line 43
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 44
    .line 45
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Z

    .line 46
    .line 47
    goto :goto_6

    .line 48
    :cond_1
    if-ne v4, v6, :cond_2

    .line 49
    .line 50
    move v4, v6

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v4, v7

    .line 53
    :goto_0
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 54
    .line 55
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 56
    .line 57
    if-ne v5, v8, :cond_3

    .line 58
    .line 59
    xor-int/2addr v4, v6

    .line 60
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 61
    .line 62
    :cond_3
    iput-boolean v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Z

    .line 63
    .line 64
    goto :goto_6

    .line 65
    :cond_4
    if-ne v4, v6, :cond_5

    .line 66
    .line 67
    move v4, v6

    .line 68
    goto :goto_1

    .line 69
    :cond_5
    move v4, v7

    .line 70
    :goto_1
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 71
    .line 72
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 73
    .line 74
    if-ne v5, v8, :cond_6

    .line 75
    .line 76
    xor-int/2addr v4, v6

    .line 77
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 78
    .line 79
    :cond_6
    iput-boolean v7, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Z

    .line 80
    .line 81
    goto :goto_6

    .line 82
    :cond_7
    if-eq v4, v6, :cond_8

    .line 83
    .line 84
    move v4, v6

    .line 85
    goto :goto_2

    .line 86
    :cond_8
    move v4, v7

    .line 87
    :goto_2
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 88
    .line 89
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 90
    .line 91
    if-ne v4, v8, :cond_9

    .line 92
    .line 93
    move v4, v6

    .line 94
    goto :goto_3

    .line 95
    :cond_9
    move v4, v7

    .line 96
    :goto_3
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Z

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_a
    if-ne v4, v6, :cond_b

    .line 100
    .line 101
    move v4, v6

    .line 102
    goto :goto_4

    .line 103
    :cond_b
    move v4, v7

    .line 104
    :goto_4
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 105
    .line 106
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 107
    .line 108
    if-ne v4, v8, :cond_c

    .line 109
    .line 110
    move v4, v6

    .line 111
    goto :goto_5

    .line 112
    :cond_c
    move v4, v7

    .line 113
    :goto_5
    iput-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Z

    .line 114
    .line 115
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->T0()V

    .line 116
    .line 117
    .line 118
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 119
    .line 120
    if-nez v4, :cond_d

    .line 121
    .line 122
    new-instance v4, Lvh3;

    .line 123
    .line 124
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 125
    .line 126
    .line 127
    iput v6, v4, Lvh3;->h:I

    .line 128
    .line 129
    iput-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 130
    .line 131
    :cond_d
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 132
    .line 133
    invoke-virtual {v4, v3}, Lrh3;->j(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v3}, Lrh3;->k(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v3}, Lrh3;->i(I)V

    .line 140
    .line 141
    .line 142
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 143
    .line 144
    iput-boolean v7, v5, Lvh3;->i:Z

    .line 145
    .line 146
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:Lwh3;

    .line 147
    .line 148
    if-eqz v5, :cond_e

    .line 149
    .line 150
    iget v8, v5, Lwh3;->a:I

    .line 151
    .line 152
    if-ltz v8, :cond_e

    .line 153
    .line 154
    if-ge v8, v3, :cond_e

    .line 155
    .line 156
    iput v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 157
    .line 158
    :cond_e
    iget-object v8, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 159
    .line 160
    iget-boolean v9, v8, Lth3;->f:Z

    .line 161
    .line 162
    const/high16 v10, -0x80000000

    .line 163
    .line 164
    const/4 v11, -0x1

    .line 165
    if-eqz v9, :cond_f

    .line 166
    .line 167
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 168
    .line 169
    if-ne v9, v11, :cond_f

    .line 170
    .line 171
    if-eqz v5, :cond_28

    .line 172
    .line 173
    :cond_f
    invoke-static {v8}, Lth3;->b(Lth3;)V

    .line 174
    .line 175
    .line 176
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:Lwh3;

    .line 177
    .line 178
    iget-boolean v9, v2, Lbh6;->g:Z

    .line 179
    .line 180
    if-nez v9, :cond_1d

    .line 181
    .line 182
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 183
    .line 184
    if-ne v9, v11, :cond_10

    .line 185
    .line 186
    goto/16 :goto_a

    .line 187
    .line 188
    :cond_10
    if-ltz v9, :cond_1c

    .line 189
    .line 190
    invoke-virtual {v2}, Lbh6;->b()I

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    if-lt v9, v12, :cond_11

    .line 195
    .line 196
    goto/16 :goto_9

    .line 197
    .line 198
    :cond_11
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 199
    .line 200
    iput v9, v8, Lth3;->a:I

    .line 201
    .line 202
    iget-object v12, v4, Lrh3;->c:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v12, [I

    .line 205
    .line 206
    aget v9, v12, v9

    .line 207
    .line 208
    iput v9, v8, Lth3;->b:I

    .line 209
    .line 210
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:Lwh3;

    .line 211
    .line 212
    if-eqz v9, :cond_12

    .line 213
    .line 214
    invoke-virtual {v2}, Lbh6;->b()I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    iget v9, v9, Lwh3;->a:I

    .line 219
    .line 220
    if-ltz v9, :cond_12

    .line 221
    .line 222
    if-ge v9, v12, :cond_12

    .line 223
    .line 224
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 225
    .line 226
    invoke-virtual {v9}, Lgu2;->m()I

    .line 227
    .line 228
    .line 229
    move-result v9

    .line 230
    iget v5, v5, Lwh3;->b:I

    .line 231
    .line 232
    add-int/2addr v9, v5

    .line 233
    iput v9, v8, Lth3;->c:I

    .line 234
    .line 235
    iput-boolean v6, v8, Lth3;->g:Z

    .line 236
    .line 237
    iput v11, v8, Lth3;->b:I

    .line 238
    .line 239
    goto/16 :goto_11

    .line 240
    .line 241
    :cond_12
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 242
    .line 243
    if-ne v5, v10, :cond_1a

    .line 244
    .line 245
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 246
    .line 247
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/a;->B(I)Landroid/view/View;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    if-eqz v5, :cond_17

    .line 252
    .line 253
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 254
    .line 255
    invoke-virtual {v9, v5}, Lgu2;->e(Landroid/view/View;)I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 260
    .line 261
    invoke-virtual {v12}, Lgu2;->n()I

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    if-le v9, v12, :cond_13

    .line 266
    .line 267
    invoke-static {v8}, Lth3;->a(Lth3;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_11

    .line 271
    .line 272
    :cond_13
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 273
    .line 274
    invoke-virtual {v9, v5}, Lgu2;->g(Landroid/view/View;)I

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 279
    .line 280
    invoke-virtual {v12}, Lgu2;->m()I

    .line 281
    .line 282
    .line 283
    move-result v12

    .line 284
    sub-int/2addr v9, v12

    .line 285
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 286
    .line 287
    if-gez v9, :cond_14

    .line 288
    .line 289
    invoke-virtual {v12}, Lgu2;->m()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    iput v5, v8, Lth3;->c:I

    .line 294
    .line 295
    iput-boolean v7, v8, Lth3;->e:Z

    .line 296
    .line 297
    goto/16 :goto_11

    .line 298
    .line 299
    :cond_14
    invoke-virtual {v12}, Lgu2;->i()I

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 304
    .line 305
    invoke-virtual {v12, v5}, Lgu2;->d(Landroid/view/View;)I

    .line 306
    .line 307
    .line 308
    move-result v12

    .line 309
    sub-int/2addr v9, v12

    .line 310
    if-gez v9, :cond_15

    .line 311
    .line 312
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 313
    .line 314
    invoke-virtual {v5}, Lgu2;->i()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    iput v5, v8, Lth3;->c:I

    .line 319
    .line 320
    iput-boolean v6, v8, Lth3;->e:Z

    .line 321
    .line 322
    goto/16 :goto_11

    .line 323
    .line 324
    :cond_15
    iget-boolean v9, v8, Lth3;->e:Z

    .line 325
    .line 326
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 327
    .line 328
    if-eqz v9, :cond_16

    .line 329
    .line 330
    invoke-virtual {v12, v5}, Lgu2;->d(Landroid/view/View;)I

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 335
    .line 336
    invoke-virtual {v9}, Lgu2;->o()I

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    add-int/2addr v9, v5

    .line 341
    goto :goto_7

    .line 342
    :cond_16
    invoke-virtual {v12, v5}, Lgu2;->g(Landroid/view/View;)I

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    :goto_7
    iput v9, v8, Lth3;->c:I

    .line 347
    .line 348
    goto/16 :goto_11

    .line 349
    .line 350
    :cond_17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    if-lez v5, :cond_19

    .line 355
    .line 356
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    if-eqz v5, :cond_19

    .line 361
    .line 362
    invoke-static {v5}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 363
    .line 364
    .line 365
    move-result v5

    .line 366
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 367
    .line 368
    if-ge v9, v5, :cond_18

    .line 369
    .line 370
    move v5, v6

    .line 371
    goto :goto_8

    .line 372
    :cond_18
    move v5, v7

    .line 373
    :goto_8
    iput-boolean v5, v8, Lth3;->e:Z

    .line 374
    .line 375
    :cond_19
    invoke-static {v8}, Lth3;->a(Lth3;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_11

    .line 379
    .line 380
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-nez v5, :cond_1b

    .line 385
    .line 386
    iget-boolean v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 387
    .line 388
    if-eqz v5, :cond_1b

    .line 389
    .line 390
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 391
    .line 392
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 393
    .line 394
    invoke-virtual {v9}, Lgu2;->j()I

    .line 395
    .line 396
    .line 397
    move-result v9

    .line 398
    sub-int/2addr v5, v9

    .line 399
    iput v5, v8, Lth3;->c:I

    .line 400
    .line 401
    goto/16 :goto_11

    .line 402
    .line 403
    :cond_1b
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 404
    .line 405
    invoke-virtual {v5}, Lgu2;->m()I

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    iget v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 410
    .line 411
    add-int/2addr v5, v9

    .line 412
    iput v5, v8, Lth3;->c:I

    .line 413
    .line 414
    goto/16 :goto_11

    .line 415
    .line 416
    :cond_1c
    :goto_9
    iput v11, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 417
    .line 418
    iput v10, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 419
    .line 420
    :cond_1d
    :goto_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    if-nez v5, :cond_1e

    .line 425
    .line 426
    goto/16 :goto_10

    .line 427
    .line 428
    :cond_1e
    iget-boolean v5, v8, Lth3;->e:Z

    .line 429
    .line 430
    if-eqz v5, :cond_1f

    .line 431
    .line 432
    invoke-virtual {v2}, Lbh6;->b()I

    .line 433
    .line 434
    .line 435
    move-result v5

    .line 436
    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->X0(I)Landroid/view/View;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    goto :goto_b

    .line 441
    :cond_1f
    invoke-virtual {v2}, Lbh6;->b()I

    .line 442
    .line 443
    .line 444
    move-result v5

    .line 445
    invoke-virtual {v0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->V0(I)Landroid/view/View;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    :goto_b
    if-eqz v5, :cond_26

    .line 450
    .line 451
    iget-object v9, v8, Lth3;->h:Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 452
    .line 453
    iget v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:I

    .line 454
    .line 455
    if-nez v12, :cond_20

    .line 456
    .line 457
    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Lgu2;

    .line 458
    .line 459
    goto :goto_c

    .line 460
    :cond_20
    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 461
    .line 462
    :goto_c
    invoke-virtual {v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 463
    .line 464
    .line 465
    move-result v13

    .line 466
    if-nez v13, :cond_22

    .line 467
    .line 468
    iget-boolean v13, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Z

    .line 469
    .line 470
    if-eqz v13, :cond_22

    .line 471
    .line 472
    iget-boolean v13, v8, Lth3;->e:Z

    .line 473
    .line 474
    if-eqz v13, :cond_21

    .line 475
    .line 476
    invoke-virtual {v12, v5}, Lgu2;->g(Landroid/view/View;)I

    .line 477
    .line 478
    .line 479
    move-result v13

    .line 480
    invoke-virtual {v12}, Lgu2;->o()I

    .line 481
    .line 482
    .line 483
    move-result v12

    .line 484
    add-int/2addr v12, v13

    .line 485
    iput v12, v8, Lth3;->c:I

    .line 486
    .line 487
    goto :goto_d

    .line 488
    :cond_21
    invoke-virtual {v12, v5}, Lgu2;->d(Landroid/view/View;)I

    .line 489
    .line 490
    .line 491
    move-result v12

    .line 492
    iput v12, v8, Lth3;->c:I

    .line 493
    .line 494
    goto :goto_d

    .line 495
    :cond_22
    iget-boolean v13, v8, Lth3;->e:Z

    .line 496
    .line 497
    if-eqz v13, :cond_23

    .line 498
    .line 499
    invoke-virtual {v12, v5}, Lgu2;->d(Landroid/view/View;)I

    .line 500
    .line 501
    .line 502
    move-result v13

    .line 503
    invoke-virtual {v12}, Lgu2;->o()I

    .line 504
    .line 505
    .line 506
    move-result v12

    .line 507
    add-int/2addr v12, v13

    .line 508
    iput v12, v8, Lth3;->c:I

    .line 509
    .line 510
    goto :goto_d

    .line 511
    :cond_23
    invoke-virtual {v12, v5}, Lgu2;->g(Landroid/view/View;)I

    .line 512
    .line 513
    .line 514
    move-result v12

    .line 515
    iput v12, v8, Lth3;->c:I

    .line 516
    .line 517
    :goto_d
    invoke-static {v5}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 518
    .line 519
    .line 520
    move-result v5

    .line 521
    iput v5, v8, Lth3;->a:I

    .line 522
    .line 523
    iput-boolean v7, v8, Lth3;->g:Z

    .line 524
    .line 525
    iget-object v12, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 526
    .line 527
    iget-object v12, v12, Lrh3;->c:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v12, [I

    .line 530
    .line 531
    if-eq v5, v11, :cond_24

    .line 532
    .line 533
    goto :goto_e

    .line 534
    :cond_24
    move v5, v7

    .line 535
    :goto_e
    aget v5, v12, v5

    .line 536
    .line 537
    if-eq v5, v11, :cond_25

    .line 538
    .line 539
    goto :goto_f

    .line 540
    :cond_25
    move v5, v7

    .line 541
    :goto_f
    iput v5, v8, Lth3;->b:I

    .line 542
    .line 543
    iget-object v5, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 544
    .line 545
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    iget v12, v8, Lth3;->b:I

    .line 550
    .line 551
    if-le v5, v12, :cond_27

    .line 552
    .line 553
    iget-object v5, v9, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 554
    .line 555
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    check-cast v5, Loh3;

    .line 560
    .line 561
    iget v5, v5, Loh3;->o:I

    .line 562
    .line 563
    iput v5, v8, Lth3;->a:I

    .line 564
    .line 565
    goto :goto_11

    .line 566
    :cond_26
    :goto_10
    invoke-static {v8}, Lth3;->a(Lth3;)V

    .line 567
    .line 568
    .line 569
    iput v7, v8, Lth3;->a:I

    .line 570
    .line 571
    iput v7, v8, Lth3;->b:I

    .line 572
    .line 573
    :cond_27
    :goto_11
    iput-boolean v6, v8, Lth3;->f:Z

    .line 574
    .line 575
    :cond_28
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/a;->A(Lvg6;)V

    .line 576
    .line 577
    .line 578
    iget-boolean v5, v8, Lth3;->e:Z

    .line 579
    .line 580
    if-eqz v5, :cond_29

    .line 581
    .line 582
    invoke-virtual {v0, v8, v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m1(Lth3;ZZ)V

    .line 583
    .line 584
    .line 585
    goto :goto_12

    .line 586
    :cond_29
    invoke-virtual {v0, v8, v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l1(Lth3;ZZ)V

    .line 587
    .line 588
    .line 589
    :goto_12
    iget v5, v0, Landroidx/recyclerview/widget/a;->y:I

    .line 590
    .line 591
    iget v9, v0, Landroidx/recyclerview/widget/a;->t:I

    .line 592
    .line 593
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 594
    .line 595
    .line 596
    move-result v14

    .line 597
    iget v5, v0, Landroidx/recyclerview/widget/a;->G:I

    .line 598
    .line 599
    iget v9, v0, Landroidx/recyclerview/widget/a;->x:I

    .line 600
    .line 601
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 602
    .line 603
    .line 604
    move-result v15

    .line 605
    iget v5, v0, Landroidx/recyclerview/widget/a;->y:I

    .line 606
    .line 607
    iget v9, v0, Landroidx/recyclerview/widget/a;->G:I

    .line 608
    .line 609
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 610
    .line 611
    .line 612
    move-result v12

    .line 613
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0:Landroid/content/Context;

    .line 614
    .line 615
    if-eqz v12, :cond_2c

    .line 616
    .line 617
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Z:I

    .line 618
    .line 619
    if-eq v12, v10, :cond_2a

    .line 620
    .line 621
    if-eq v12, v5, :cond_2a

    .line 622
    .line 623
    move v10, v6

    .line 624
    goto :goto_13

    .line 625
    :cond_2a
    move v10, v7

    .line 626
    :goto_13
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 627
    .line 628
    iget-boolean v6, v12, Lvh3;->b:Z

    .line 629
    .line 630
    if-eqz v6, :cond_2b

    .line 631
    .line 632
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 633
    .line 634
    .line 635
    move-result-object v6

    .line 636
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 637
    .line 638
    .line 639
    move-result-object v6

    .line 640
    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 641
    .line 642
    goto :goto_14

    .line 643
    :cond_2b
    iget v6, v12, Lvh3;->a:I

    .line 644
    .line 645
    :goto_14
    move/from16 v16, v6

    .line 646
    .line 647
    goto :goto_16

    .line 648
    :cond_2c
    iget v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a0:I

    .line 649
    .line 650
    if-eq v6, v10, :cond_2d

    .line 651
    .line 652
    if-eq v6, v9, :cond_2d

    .line 653
    .line 654
    const/4 v10, 0x1

    .line 655
    goto :goto_15

    .line 656
    :cond_2d
    move v10, v7

    .line 657
    :goto_15
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 658
    .line 659
    iget-boolean v12, v6, Lvh3;->b:Z

    .line 660
    .line 661
    if-eqz v12, :cond_2e

    .line 662
    .line 663
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 664
    .line 665
    .line 666
    move-result-object v6

    .line 667
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 672
    .line 673
    goto :goto_14

    .line 674
    :cond_2e
    iget v6, v6, Lvh3;->a:I

    .line 675
    .line 676
    goto :goto_14

    .line 677
    :goto_16
    iput v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Z:I

    .line 678
    .line 679
    iput v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a0:I

    .line 680
    .line 681
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0:I

    .line 682
    .line 683
    const/4 v6, 0x0

    .line 684
    iget-object v9, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 685
    .line 686
    if-ne v5, v11, :cond_32

    .line 687
    .line 688
    iget v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 689
    .line 690
    if-ne v12, v11, :cond_2f

    .line 691
    .line 692
    if-eqz v10, :cond_32

    .line 693
    .line 694
    :cond_2f
    iget-boolean v3, v8, Lth3;->e:Z

    .line 695
    .line 696
    if-eqz v3, :cond_30

    .line 697
    .line 698
    goto/16 :goto_19

    .line 699
    .line 700
    :cond_30
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 701
    .line 702
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 703
    .line 704
    .line 705
    iput-object v6, v9, Lph3;->b:Ljava/util/List;

    .line 706
    .line 707
    iput v7, v9, Lph3;->a:I

    .line 708
    .line 709
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 710
    .line 711
    .line 712
    move-result v3

    .line 713
    iget v5, v8, Lth3;->a:I

    .line 714
    .line 715
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 716
    .line 717
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 718
    .line 719
    if-eqz v3, :cond_31

    .line 720
    .line 721
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 722
    .line 723
    const/16 v17, 0x0

    .line 724
    .line 725
    move-object/from16 v19, v3

    .line 726
    .line 727
    move/from16 v18, v5

    .line 728
    .line 729
    invoke-virtual/range {v12 .. v19}, Lrh3;->b(Lph3;IIIIILjava/util/List;)V

    .line 730
    .line 731
    .line 732
    goto :goto_17

    .line 733
    :cond_31
    move/from16 v18, v5

    .line 734
    .line 735
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 736
    .line 737
    const/16 v17, 0x0

    .line 738
    .line 739
    move/from16 v19, v15

    .line 740
    .line 741
    move v15, v14

    .line 742
    move/from16 v14, v19

    .line 743
    .line 744
    move-object/from16 v19, v3

    .line 745
    .line 746
    invoke-virtual/range {v12 .. v19}, Lrh3;->b(Lph3;IIIIILjava/util/List;)V

    .line 747
    .line 748
    .line 749
    move/from16 v20, v15

    .line 750
    .line 751
    move v15, v14

    .line 752
    move/from16 v14, v20

    .line 753
    .line 754
    :goto_17
    iget-object v3, v9, Lph3;->b:Ljava/util/List;

    .line 755
    .line 756
    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 757
    .line 758
    invoke-virtual {v4, v14, v15, v7}, Lrh3;->h(III)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v4, v7}, Lrh3;->w(I)V

    .line 762
    .line 763
    .line 764
    iget-object v3, v4, Lrh3;->c:Ljava/lang/Object;

    .line 765
    .line 766
    check-cast v3, [I

    .line 767
    .line 768
    iget v4, v8, Lth3;->a:I

    .line 769
    .line 770
    aget v3, v3, v4

    .line 771
    .line 772
    iput v3, v8, Lth3;->b:I

    .line 773
    .line 774
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 775
    .line 776
    iput v3, v4, Lvh3;->c:I

    .line 777
    .line 778
    goto/16 :goto_19

    .line 779
    .line 780
    :cond_32
    iget v10, v8, Lth3;->a:I

    .line 781
    .line 782
    if-eq v5, v11, :cond_33

    .line 783
    .line 784
    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    .line 785
    .line 786
    .line 787
    move-result v10

    .line 788
    :cond_33
    iput-object v6, v9, Lph3;->b:Ljava/util/List;

    .line 789
    .line 790
    iput v7, v9, Lph3;->a:I

    .line 791
    .line 792
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j()Z

    .line 793
    .line 794
    .line 795
    move-result v5

    .line 796
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 797
    .line 798
    if-eqz v5, :cond_35

    .line 799
    .line 800
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 801
    .line 802
    .line 803
    move-result v5

    .line 804
    if-lez v5, :cond_34

    .line 805
    .line 806
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 807
    .line 808
    invoke-virtual {v4, v10, v3}, Lrh3;->d(ILjava/util/List;)V

    .line 809
    .line 810
    .line 811
    iget v3, v8, Lth3;->a:I

    .line 812
    .line 813
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 814
    .line 815
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 816
    .line 817
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 818
    .line 819
    move/from16 v18, v3

    .line 820
    .line 821
    move-object/from16 v19, v5

    .line 822
    .line 823
    move/from16 v17, v10

    .line 824
    .line 825
    invoke-virtual/range {v12 .. v19}, Lrh3;->b(Lph3;IIIIILjava/util/List;)V

    .line 826
    .line 827
    .line 828
    goto :goto_18

    .line 829
    :cond_34
    invoke-virtual {v4, v3}, Lrh3;->i(I)V

    .line 830
    .line 831
    .line 832
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 833
    .line 834
    const/16 v18, -0x1

    .line 835
    .line 836
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 837
    .line 838
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 839
    .line 840
    const/16 v17, 0x0

    .line 841
    .line 842
    move-object/from16 v19, v3

    .line 843
    .line 844
    invoke-virtual/range {v12 .. v19}, Lrh3;->b(Lph3;IIIIILjava/util/List;)V

    .line 845
    .line 846
    .line 847
    goto :goto_18

    .line 848
    :cond_35
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 849
    .line 850
    .line 851
    move-result v5

    .line 852
    if-lez v5, :cond_36

    .line 853
    .line 854
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 855
    .line 856
    invoke-virtual {v4, v10, v3}, Lrh3;->d(ILjava/util/List;)V

    .line 857
    .line 858
    .line 859
    iget v3, v8, Lth3;->a:I

    .line 860
    .line 861
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 862
    .line 863
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 864
    .line 865
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 866
    .line 867
    move/from16 v17, v15

    .line 868
    .line 869
    move v15, v14

    .line 870
    move/from16 v14, v17

    .line 871
    .line 872
    move/from16 v18, v3

    .line 873
    .line 874
    move-object/from16 v19, v5

    .line 875
    .line 876
    move/from16 v17, v10

    .line 877
    .line 878
    invoke-virtual/range {v12 .. v19}, Lrh3;->b(Lph3;IIIIILjava/util/List;)V

    .line 879
    .line 880
    .line 881
    move v10, v15

    .line 882
    move v15, v14

    .line 883
    move v14, v10

    .line 884
    move/from16 v10, v17

    .line 885
    .line 886
    goto :goto_18

    .line 887
    :cond_36
    invoke-virtual {v4, v3}, Lrh3;->i(I)V

    .line 888
    .line 889
    .line 890
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 891
    .line 892
    const/16 v18, -0x1

    .line 893
    .line 894
    iget-object v12, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:Lrh3;

    .line 895
    .line 896
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f0:Lph3;

    .line 897
    .line 898
    const/16 v17, 0x0

    .line 899
    .line 900
    move/from16 v19, v15

    .line 901
    .line 902
    move v15, v14

    .line 903
    move/from16 v14, v19

    .line 904
    .line 905
    move-object/from16 v19, v3

    .line 906
    .line 907
    invoke-virtual/range {v12 .. v19}, Lrh3;->b(Lph3;IIIIILjava/util/List;)V

    .line 908
    .line 909
    .line 910
    move/from16 v20, v15

    .line 911
    .line 912
    move v15, v14

    .line 913
    move/from16 v14, v20

    .line 914
    .line 915
    :goto_18
    iget-object v3, v9, Lph3;->b:Ljava/util/List;

    .line 916
    .line 917
    iput-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 918
    .line 919
    invoke-virtual {v4, v14, v15, v10}, Lrh3;->h(III)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v4, v10}, Lrh3;->w(I)V

    .line 923
    .line 924
    .line 925
    :goto_19
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 926
    .line 927
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->U0(Lvg6;Lbh6;Lvh3;)I

    .line 928
    .line 929
    .line 930
    iget-boolean v3, v8, Lth3;->e:Z

    .line 931
    .line 932
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 933
    .line 934
    if-eqz v3, :cond_37

    .line 935
    .line 936
    iget v3, v4, Lvh3;->e:I

    .line 937
    .line 938
    const/4 v5, 0x1

    .line 939
    invoke-virtual {v0, v8, v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l1(Lth3;ZZ)V

    .line 940
    .line 941
    .line 942
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 943
    .line 944
    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->U0(Lvg6;Lbh6;Lvh3;)I

    .line 945
    .line 946
    .line 947
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 948
    .line 949
    iget v4, v4, Lvh3;->e:I

    .line 950
    .line 951
    goto :goto_1a

    .line 952
    :cond_37
    const/4 v5, 0x1

    .line 953
    iget v4, v4, Lvh3;->e:I

    .line 954
    .line 955
    invoke-virtual {v0, v8, v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m1(Lth3;ZZ)V

    .line 956
    .line 957
    .line 958
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 959
    .line 960
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->U0(Lvg6;Lbh6;Lvh3;)I

    .line 961
    .line 962
    .line 963
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Lvh3;

    .line 964
    .line 965
    iget v3, v3, Lvh3;->e:I

    .line 966
    .line 967
    :goto_1a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/a;->G()I

    .line 968
    .line 969
    .line 970
    move-result v6

    .line 971
    if-lez v6, :cond_39

    .line 972
    .line 973
    iget-boolean v6, v8, Lth3;->e:Z

    .line 974
    .line 975
    if-eqz v6, :cond_38

    .line 976
    .line 977
    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b1(ILvg6;Lbh6;Z)I

    .line 978
    .line 979
    .line 980
    move-result v4

    .line 981
    add-int/2addr v4, v3

    .line 982
    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c1(ILvg6;Lbh6;Z)I

    .line 983
    .line 984
    .line 985
    return-void

    .line 986
    :cond_38
    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c1(ILvg6;Lbh6;Z)I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    add-int/2addr v3, v4

    .line 991
    invoke-virtual {v0, v3, v1, v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b1(ILvg6;Lbh6;Z)I

    .line 992
    .line 993
    .line 994
    :cond_39
    :goto_1b
    return-void
.end method

.method public final q(Lqg6;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Luh3;

    .line 2
    .line 3
    return p0
.end method

.method public final q0(Lbh6;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:Lwh3;

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:I

    .line 6
    .line 7
    const/high16 v0, -0x80000000

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:I

    .line 10
    .line 11
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Lth3;

    .line 14
    .line 15
    invoke-static {p1}, Lth3;->b(Lth3;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b0:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final r0(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lwh3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lwh3;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:Lwh3;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->B0()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final s0()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:Lwh3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Lwh3;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, v0, Lwh3;->a:I

    .line 11
    .line 12
    iput v1, p0, Lwh3;->a:I

    .line 13
    .line 14
    iget v0, v0, Lwh3;->b:I

    .line 15
    .line 16
    iput v0, p0, Lwh3;->b:I

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance v0, Lwh3;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->G()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->F(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroidx/recyclerview/widget/a;->R(Landroid/view/View;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput v2, v0, Lwh3;->a:I

    .line 40
    .line 41
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Lgu2;->g(Landroid/view/View;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Lgu2;

    .line 48
    .line 49
    invoke-virtual {p0}, Lgu2;->m()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    sub-int/2addr v1, p0

    .line 54
    iput v1, v0, Lwh3;->b:I

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    const/4 p0, -0x1

    .line 58
    iput p0, v0, Lwh3;->a:I

    .line 59
    .line 60
    return-object v0
.end method

.method public final setFlexLines(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final u(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q0(Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final v(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->R0(Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final w(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->S0(Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final x(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q0(Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final y(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->R0(Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final z(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->S0(Lbh6;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
