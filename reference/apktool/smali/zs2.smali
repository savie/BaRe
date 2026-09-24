.class public final Lzs2;
.super Lq34;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final s(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1
    invoke-static {p1, p2}, Lq34;->q(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1, p3}, Lq34;->q(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p2, p0, Landroid/graphics/RectF;->left:F

    .line 10
    .line 11
    iget p3, p1, Landroid/graphics/RectF;->left:F

    .line 12
    .line 13
    cmpg-float p2, p2, p3

    .line 14
    .line 15
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 16
    .line 17
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    if-gez p2, :cond_0

    .line 25
    .line 26
    float-to-double p2, p4

    .line 27
    mul-double/2addr p2, v2

    .line 28
    div-double/2addr p2, v0

    .line 29
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    sub-double/2addr v4, v0

    .line 34
    double-to-float p4, v4

    .line 35
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide p2

    .line 39
    double-to-float p2, p2

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    float-to-double p2, p4

    .line 42
    mul-double/2addr p2, v2

    .line 43
    div-double/2addr p2, v0

    .line 44
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    double-to-float p4, v0

    .line 49
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    sub-double/2addr v4, p2

    .line 54
    double-to-float p2, v4

    .line 55
    :goto_0
    iget p3, p0, Landroid/graphics/RectF;->left:F

    .line 56
    .line 57
    float-to-int p3, p3

    .line 58
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 59
    .line 60
    float-to-int v0, v0

    .line 61
    invoke-static {p4, p3, v0}, Led;->c(FII)I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    iget p0, p0, Landroid/graphics/RectF;->right:F

    .line 72
    .line 73
    float-to-int p0, p0

    .line 74
    iget p1, p1, Landroid/graphics/RectF;->right:F

    .line 75
    .line 76
    float-to-int p1, p1

    .line 77
    invoke-static {p2, p0, p1}, Led;->c(FII)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    invoke-virtual {p5, p3, p4, p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
