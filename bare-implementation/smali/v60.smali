.class public final Lv60;
.super Landroid/text/style/ReplacementSpan;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lo75;

.field public final b:Lp60;

.field public final c:Z


# direct methods
.method public constructor <init>(Lo75;Lp60;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv60;->a:Lo75;

    .line 5
    .line 6
    iput-object p2, p0, Lv60;->b:Lp60;

    .line 7
    .line 8
    iput-boolean p3, p0, Lv60;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8

    .line 1
    move-object/from16 v7, p9

    .line 2
    .line 3
    invoke-static/range {p1 .. p2}, Lzv1;->s(Landroid/graphics/Canvas;Ljava/lang/CharSequence;)I

    .line 4
    .line 5
    .line 6
    move-result p7

    .line 7
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lv60;->b:Lp60;

    .line 12
    .line 13
    iput p7, v1, Lp60;->h:I

    .line 14
    .line 15
    iput v0, v1, Lp60;->i:F

    .line 16
    .line 17
    iget-boolean p7, v1, Lp60;->j:Z

    .line 18
    .line 19
    if-eqz p7, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lp60;->b()V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v1}, Lp60;->a()Z

    .line 25
    .line 26
    .line 27
    move-result p7

    .line 28
    if-eqz p7, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    sub-int p0, p8, p0

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    int-to-float p0, p0

    .line 43
    :try_start_0
    invoke-virtual {p1, p5, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Lp60;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    sub-int p7, p8, p6

    .line 60
    .line 61
    div-int/lit8 p7, p7, 0x2

    .line 62
    .line 63
    add-int/2addr p7, p6

    .line 64
    int-to-float p6, p7

    .line 65
    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    .line 66
    .line 67
    .line 68
    move-result p7

    .line 69
    invoke-virtual {v7}, Landroid/graphics/Paint;->ascent()F

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    add-float/2addr v0, p7

    .line 74
    const/high16 p7, 0x40000000    # 2.0f

    .line 75
    .line 76
    div-float/2addr v0, p7

    .line 77
    const/high16 p7, 0x3f000000    # 0.5f

    .line 78
    .line 79
    add-float/2addr v0, p7

    .line 80
    sub-float/2addr p6, v0

    .line 81
    float-to-int p6, p6

    .line 82
    int-to-float v6, p6

    .line 83
    iget-boolean p6, p0, Lv60;->c:Z

    .line 84
    .line 85
    if-eqz p6, :cond_3

    .line 86
    .line 87
    iget-object p0, p0, Lv60;->a:Lo75;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    const/4 p6, 0x1

    .line 93
    invoke-virtual {v7, p6}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 94
    .line 95
    .line 96
    iget p0, p0, Lo75;->a:I

    .line 97
    .line 98
    if-eqz p0, :cond_2

    .line 99
    .line 100
    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    instance-of p0, v7, Landroid/text/TextPaint;

    .line 105
    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    move-object p0, v7

    .line 109
    check-cast p0, Landroid/text/TextPaint;

    .line 110
    .line 111
    iget p0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 112
    .line 113
    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    .line 115
    .line 116
    :cond_3
    :goto_0
    move-object v1, p1

    .line 117
    move-object v2, p2

    .line 118
    move v3, p3

    .line 119
    move v4, p4

    .line 120
    move v5, p5

    .line 121
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lv60;->b:Lp60;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp60;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p5, :cond_0

    .line 14
    .line 15
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    neg-int p1, p1

    .line 18
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 22
    .line 23
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 24
    .line 25
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 26
    .line 27
    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    return p0

    .line 30
    :cond_1
    iget-boolean p5, p0, Lv60;->c:Z

    .line 31
    .line 32
    if-eqz p5, :cond_3

    .line 33
    .line 34
    iget-object p0, p0, Lv60;->a:Lo75;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const/4 p5, 0x1

    .line 40
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 41
    .line 42
    .line 43
    iget p0, p0, Lo75;->a:I

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    instance-of p0, p1, Landroid/text/TextPaint;

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    move-object p0, p1

    .line 56
    check-cast p0, Landroid/text/TextPaint;

    .line 57
    .line 58
    iget p0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    const/high16 p1, 0x3f000000    # 0.5f

    .line 68
    .line 69
    add-float/2addr p0, p1

    .line 70
    float-to-int p0, p0

    .line 71
    return p0
.end method
