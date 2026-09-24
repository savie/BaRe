.class public final La71;
.super Landroid/view/View;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/graphics/Path;

.field public d:Landroid/graphics/Paint;

.field public e:F

.field public f:F

.field public k:F

.field public n:Ljava/lang/String;


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, La71;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget v1, p0, La71;->b:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, La71;->c:Landroid/graphics/Path;

    .line 9
    .line 10
    iget-object v1, p0, La71;->d:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, La71;->d:Landroid/graphics/Paint;

    .line 16
    .line 17
    iget v1, p0, La71;->a:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, La71;->n:Ljava/lang/String;

    .line 23
    .line 24
    iget v1, p0, La71;->e:F

    .line 25
    .line 26
    const/high16 v2, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v1, v2

    .line 29
    iget v3, p0, La71;->f:F

    .line 30
    .line 31
    div-float/2addr v3, v2

    .line 32
    iget v2, p0, La71;->k:F

    .line 33
    .line 34
    const/high16 v4, 0x40800000    # 4.0f

    .line 35
    .line 36
    div-float/2addr v2, v4

    .line 37
    add-float/2addr v2, v3

    .line 38
    iget-object p0, p0, La71;->d:Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, La71;->e:F

    .line 2
    .line 3
    float-to-int p1, p1

    .line 4
    iget p2, p0, La71;->f:F

    .line 5
    .line 6
    float-to-int p2, p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, La71;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
