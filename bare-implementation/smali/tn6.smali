.class public final Ltn6;
.super Lyc9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final q:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final A(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final B()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final G(F)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    cmpg-float p0, p1, p0

    .line 3
    .line 4
    if-gez p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public final H(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    .line 8
    .line 9
    invoke-virtual {p0}, Ltn6;->v()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    div-int/lit8 p0, p0, 0x2

    .line 15
    .line 16
    if-le p1, p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final I(FF)Z
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    cmpl-float p0, p0, p2

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/high16 p1, 0x43fa0000    # 500.0f

    .line 18
    .line 19
    cmpl-float p0, p0, p1

    .line 20
    .line 21
    if-lez p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final d(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    .line 1
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2
    .line 3
    return p0
.end method

.method public final e(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    .line 4
    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Ltn6;->v()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    int-to-float p0, p0

    .line 11
    sub-float p0, v0, p0

    .line 12
    .line 13
    int-to-float p1, p1

    .line 14
    sub-float/2addr v0, p1

    .line 15
    div-float/2addr v0, p0

    .line 16
    return v0
.end method

.method public final e0(Landroid/view/View;F)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-float p1, p1

    .line 6
    iget-object p0, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 7
    .line 8
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    .line 9
    .line 10
    mul-float/2addr p2, p0

    .line 11
    add-float/2addr p2, p1

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/high16 p1, 0x3f000000    # 0.5f

    .line 17
    .line 18
    cmpl-float p0, p0, p1

    .line 19
    .line 20
    if-lez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final l0(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0

    .line 1
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2
    .line 3
    return-void
.end method

.method public final m0(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    .line 4
    .line 5
    if-gt p2, p0, :cond_0

    .line 6
    .line 7
    sub-int/2addr p0, p2

    .line 8
    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final t(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    .line 1
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2
    .line 3
    return p0
.end method

.method public final v()I
    .locals 2

    .line 1
    iget-object p0, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    .line 9
    .line 10
    sub-int/2addr v0, p0

    .line 11
    const/4 p0, 0x0

    .line 12
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final w()I
    .locals 0

    .line 1
    iget-object p0, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    .line 4
    .line 5
    return p0
.end method

.method public final x()I
    .locals 0

    .line 1
    iget-object p0, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 2
    .line 3
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    .line 4
    .line 5
    return p0
.end method

.method public final y()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ltn6;->v()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final z(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Ltn6;->q:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 6
    .line 7
    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    .line 8
    .line 9
    sub-int/2addr p1, p0

    .line 10
    return p1
.end method
