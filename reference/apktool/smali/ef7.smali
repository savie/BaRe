.class public final Lef7;
.super Lly8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic f:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lef7;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final H(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lef7;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->x(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final I(Landroid/view/View;II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lef7;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    check-cast p3, Landroid/view/View;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p3, 0x0

    .line 15
    :goto_0
    if-eqz p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v1, v0, v2, p1}, Lyc9;->m0(Landroid/view/ViewGroup$MarginLayoutParams;II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v:Ljava/util/LinkedHashSet;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-nez p3, :cond_3

    .line 48
    .line 49
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lyc9;->e(I)F

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    invoke-static {p0}, Leq3;->h(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    throw p0

    .line 70
    :cond_3
    :goto_1
    return-void
.end method

.method public final J(Landroid/view/View;FF)V
    .locals 1

    .line 1
    iget-object p0, p0, Lef7;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lyc9;->G(F)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lyc9;->e0(Landroid/view/View;F)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 21
    .line 22
    invoke-virtual {v0, p2, p3}, Lyc9;->I(FF)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_4

    .line 27
    .line 28
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lyc9;->H(Landroid/view/View;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    cmpl-float v0, p2, v0

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    cmpl-float p2, p2, p3

    .line 51
    .line 52
    if-lez p2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 60
    .line 61
    invoke-virtual {p3}, Lyc9;->v()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    sub-int p3, p2, p3

    .line 66
    .line 67
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 72
    .line 73
    invoke-virtual {v0}, Lyc9;->w()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    sub-int/2addr p2, v0

    .line 78
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-ge p3, p2, :cond_4

    .line 83
    .line 84
    :cond_3
    :goto_0
    const/4 p2, 0x3

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    :goto_1
    const/4 p2, 0x5

    .line 87
    :goto_2
    const/4 p3, 0x1

    .line 88
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->z(Landroid/view/View;IZ)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final Q(Landroid/view/View;I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lef7;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-ne p0, p1, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final l(Landroid/view/View;I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lef7;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 4
    .line 5
    invoke-virtual {p1}, Lyc9;->y()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:Lyc9;

    .line 10
    .line 11
    invoke-virtual {p0}, Lyc9;->x()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    invoke-static {p2, p1, p0}, Liz1;->d(III)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final m(Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final y(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lef7;->f:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    .line 6
    .line 7
    add-int/2addr p1, p0

    .line 8
    return p1
.end method
