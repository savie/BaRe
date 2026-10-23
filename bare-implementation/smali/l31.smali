.class public final Ll31;
.super Landroid/util/Property;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls31;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ls31;

    .line 2
    .line 3
    check-cast p2, Landroid/graphics/PointF;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p0, p2, Landroid/graphics/PointF;->x:F

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    iput p0, p1, Ls31;->a:I

    .line 15
    .line 16
    iget p0, p2, Landroid/graphics/PointF;->y:F

    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    iput p0, p1, Ls31;->b:I

    .line 23
    .line 24
    iget p2, p1, Ls31;->f:I

    .line 25
    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    iput p2, p1, Ls31;->f:I

    .line 29
    .line 30
    iget v0, p1, Ls31;->g:I

    .line 31
    .line 32
    if-ne p2, v0, :cond_0

    .line 33
    .line 34
    iget-object p2, p1, Ls31;->e:Landroid/view/View;

    .line 35
    .line 36
    iget v0, p1, Ls31;->a:I

    .line 37
    .line 38
    iget v1, p1, Ls31;->c:I

    .line 39
    .line 40
    iget v2, p1, Ls31;->d:I

    .line 41
    .line 42
    invoke-static {p2, v0, p0, v1, v2}, Lwm8;->a(Landroid/view/View;IIII)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    iput p0, p1, Ls31;->f:I

    .line 47
    .line 48
    iput p0, p1, Ls31;->g:I

    .line 49
    .line 50
    :cond_0
    return-void
.end method
