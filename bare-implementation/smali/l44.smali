.class public final Ll44;
.super Lzv1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final h(Landroid/view/View;Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    .line 7
    add-int/2addr p0, p1

    .line 8
    return p0
.end method

.method public final i()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final j(Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    int-to-float p1, p2

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
