.class public final Lvl5;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public b:Z


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget p2, p0, Lvl5;->a:I

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :goto_0
    if-ge p3, p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    check-cast p5, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    .line 23
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget v0, p5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 32
    .line 33
    add-int/2addr p2, v0

    .line 34
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p4}, Landroid/view/View;->getRight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    add-int/2addr v2, p2

    .line 47
    invoke-virtual {p4, v0, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    iget p5, p5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 55
    .line 56
    add-int/2addr p4, p5

    .line 57
    add-int/2addr p2, p4

    .line 58
    add-int/lit8 p3, p3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x1

    .line 18
    if-le v0, v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 38
    .line 39
    add-int/2addr v0, v2

    .line 40
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 41
    .line 42
    add-int/2addr v1, v0

    .line 43
    sub-int v0, v3, v1

    .line 44
    .line 45
    iget v2, p0, Lvl5;->a:I

    .line 46
    .line 47
    sub-int/2addr v0, v2

    .line 48
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-boolean v4, p0, Lvl5;->b:Z

    .line 53
    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    const/high16 p2, -0x80000000

    .line 57
    .line 58
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 76
    .line 77
    add-int/2addr p1, p2

    .line 78
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 79
    .line 80
    add-int/2addr p1, p2

    .line 81
    iget p2, p0, Lvl5;->a:I

    .line 82
    .line 83
    add-int/2addr p2, v1

    .line 84
    add-int/2addr p2, p1

    .line 85
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lvl5;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lvl5;->b:Z

    .line 2
    .line 3
    return-void
.end method
