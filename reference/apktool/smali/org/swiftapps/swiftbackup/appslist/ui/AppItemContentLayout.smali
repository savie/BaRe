.class public final Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;
.super Landroid/view/ViewGroup;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public k:Landroid/view/View;

.field public n:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public final r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f0704b0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->r:I

    .line 19
    .line 20
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    .line 10
    return-object p0
.end method

.method public static g(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19
    .line 20
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    .line 36
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 37
    .line 38
    add-int/2addr v1, p0

    .line 39
    return v1
.end method

.method public static h(Landroid/view/View;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    .line 19
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    .line 21
    add-int/2addr p1, v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, p1

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 35
    .line 36
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 37
    .line 38
    add-int/2addr v0, p0

    .line 39
    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    add-int/2addr p0, v1

    .line 43
    return p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "icon"

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v3, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    add-int/2addr v3, v0

    .line 39
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    add-int/2addr p0, v3

    .line 52
    return p0

    .line 53
    :cond_1
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v1

    .line 57
    :cond_2
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v1

    .line 61
    :cond_3
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :cond_4
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method

.method public final b(Landroid/view/View;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    sub-int/2addr p0, p2

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    sub-int p2, p0, p2

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    add-int/2addr p0, p2

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, p3

    .line 38
    invoke-virtual {p1, p2, p3, p0, v0}, Landroid/view/View;->layout(IIII)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final c(Landroid/view/View;II)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return p3

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    .line 19
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    .line 21
    add-int/2addr p3, v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, p2

    .line 27
    invoke-virtual {p0, p1, v0, p3}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, p3

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 43
    .line 44
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 45
    .line 46
    add-int/2addr p0, p1

    .line 47
    return p0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    .line 6
    return p0
.end method

.method public final e(Landroid/view/View;II)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move v2, p2

    .line 16
    move v4, p3

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final f(Landroid/view/View;II)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    .line 13
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    add-int/2addr p0, v0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    .line 35
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 36
    .line 37
    add-int/2addr p0, v0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    .line 47
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 48
    .line 49
    add-int/2addr p0, v0

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 58
    .line 59
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 60
    .line 61
    invoke-static {p3, p0, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredState()I

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    return p0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    .line 3
    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a05ad

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->a:Landroid/view/View;

    .line 15
    .line 16
    const v0, 0x7f0a05ba

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b:Landroid/view/View;

    .line 27
    .line 28
    const v0, 0x7f0a05ae

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c:Landroid/view/View;

    .line 39
    .line 40
    const v0, 0x7f0a05af

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d:Landroid/view/View;

    .line 51
    .line 52
    const v0, 0x7f0a0400

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e:Landroid/view/View;

    .line 63
    .line 64
    const v0, 0x7f0a014b

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f:Landroid/view/View;

    .line 75
    .line 76
    const v0, 0x7f0a0270

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 87
    .line 88
    const v0, 0x7f0a02b5

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->n:Landroid/view/View;

    .line 99
    .line 100
    const v0, 0x7f0a02bd

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 111
    .line 112
    const v0, 0x7f0a02be

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 123
    .line 124
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    sub-int/2addr p1, p2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    sub-int/2addr p1, p2

    .line 15
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    const-string p4, "icon"

    .line 19
    .line 20
    if-eqz p2, :cond_25

    .line 21
    .line 22
    invoke-static {p2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 31
    .line 32
    .line 33
    move-result p5

    .line 34
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->a:Landroid/view/View;

    .line 35
    .line 36
    const-string v1, "subtitle1"

    .line 37
    .line 38
    if-eqz v0, :cond_24

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    .line 49
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 50
    .line 51
    add-int/2addr p5, v0

    .line 52
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 53
    .line 54
    if-eqz v0, :cond_23

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 64
    .line 65
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 66
    .line 67
    add-int/2addr p5, v0

    .line 68
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 69
    .line 70
    if-eqz v0, :cond_22

    .line 71
    .line 72
    invoke-virtual {p0, v0, p2, p5}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b(Landroid/view/View;II)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->n:Landroid/view/View;

    .line 76
    .line 77
    const-string v2, "favorite"

    .line 78
    .line 79
    if-eqz v0, :cond_21

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v3, 0x8

    .line 86
    .line 87
    if-eq v0, v3, :cond_7

    .line 88
    .line 89
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-ne v0, v3, :cond_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->n:Landroid/view/View;

    .line 109
    .line 110
    if-eqz v4, :cond_4

    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    sub-int/2addr v0, v4

    .line 117
    div-int/lit8 v0, v0, 0x2

    .line 118
    .line 119
    add-int/2addr v0, p2

    .line 120
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 121
    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    add-int/2addr p2, p5

    .line 129
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->n:Landroid/view/View;

    .line 130
    .line 131
    if-eqz p5, :cond_2

    .line 132
    .line 133
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 134
    .line 135
    .line 136
    move-result p5

    .line 137
    sub-int/2addr p2, p5

    .line 138
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->n:Landroid/view/View;

    .line 139
    .line 140
    if-eqz p5, :cond_1

    .line 141
    .line 142
    invoke-virtual {p0, p5, v0, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b(Landroid/view/View;II)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_1
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p3

    .line 150
    :cond_2
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p3

    .line 154
    :cond_3
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p3

    .line 158
    :cond_4
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p3

    .line 162
    :cond_5
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p3

    .line 166
    :cond_6
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p3

    .line 170
    :cond_7
    :goto_0
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 171
    .line 172
    if-eqz p2, :cond_20

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    const-string p4, "title"

    .line 179
    .line 180
    if-eq p2, v3, :cond_9

    .line 181
    .line 182
    iget-object p2, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b:Landroid/view/View;

    .line 183
    .line 184
    if-eqz p2, :cond_8

    .line 185
    .line 186
    invoke-static {p2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    goto :goto_1

    .line 195
    :cond_8
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p3

    .line 199
    :cond_9
    const/4 p2, 0x0

    .line 200
    :goto_1
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->a()I

    .line 201
    .line 202
    .line 203
    move-result p5

    .line 204
    add-int/2addr p5, p2

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->a:Landroid/view/View;

    .line 210
    .line 211
    if-eqz v0, :cond_1f

    .line 212
    .line 213
    invoke-virtual {p0, v0, p5, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c(Landroid/view/View;II)I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b:Landroid/view/View;

    .line 218
    .line 219
    if-eqz v0, :cond_1e

    .line 220
    .line 221
    invoke-virtual {p0, v0, p5, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c(Landroid/view/View;II)I

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c:Landroid/view/View;

    .line 226
    .line 227
    if-eqz p4, :cond_1d

    .line 228
    .line 229
    invoke-virtual {p0, p4, p5, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c(Landroid/view/View;II)I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d:Landroid/view/View;

    .line 234
    .line 235
    if-eqz p4, :cond_1c

    .line 236
    .line 237
    invoke-virtual {p0, p4, p5, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c(Landroid/view/View;II)I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    iget-object p4, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e:Landroid/view/View;

    .line 242
    .line 243
    if-eqz p4, :cond_1b

    .line 244
    .line 245
    invoke-virtual {p0, p4, p5, p2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c(Landroid/view/View;II)I

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 253
    .line 254
    .line 255
    move-result p4

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 257
    .line 258
    .line 259
    move-result p5

    .line 260
    sub-int/2addr p4, p5

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 262
    .line 263
    .line 264
    move-result p5

    .line 265
    sub-int/2addr p4, p5

    .line 266
    div-int/lit8 p4, p4, 0x2

    .line 267
    .line 268
    add-int/2addr p4, p2

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    add-int/2addr p2, p1

    .line 274
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 275
    .line 276
    const-string p5, "menuClickListener"

    .line 277
    .line 278
    if-eqz p1, :cond_1a

    .line 279
    .line 280
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->i(Landroid/view/View;)I

    .line 281
    .line 282
    .line 283
    move-result p1

    .line 284
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 285
    .line 286
    if-eqz v0, :cond_19

    .line 287
    .line 288
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eq v0, v3, :cond_c

    .line 293
    .line 294
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 295
    .line 296
    if-eqz v0, :cond_b

    .line 297
    .line 298
    sub-int v1, p2, p1

    .line 299
    .line 300
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    add-int/2addr v2, v1

    .line 309
    iget-object v1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 310
    .line 311
    if-eqz v1, :cond_a

    .line 312
    .line 313
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    div-int/lit8 v1, v1, 0x2

    .line 318
    .line 319
    sub-int v1, p4, v1

    .line 320
    .line 321
    invoke-virtual {p0, v0, v2, v1}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b(Landroid/view/View;II)V

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_a
    invoke-static {p5}, Lpe4;->F(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p3

    .line 329
    :cond_b
    invoke-static {p5}, Lpe4;->F(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    throw p3

    .line 333
    :cond_c
    :goto_2
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 334
    .line 335
    const-string v1, "menu"

    .line 336
    .line 337
    if-eqz v0, :cond_18

    .line 338
    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eq v0, v3, :cond_10

    .line 344
    .line 345
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 346
    .line 347
    if-eqz v0, :cond_f

    .line 348
    .line 349
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    sub-int v2, p2, v2

    .line 358
    .line 359
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 360
    .line 361
    if-eqz v4, :cond_e

    .line 362
    .line 363
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    sub-int/2addr v2, v4

    .line 368
    iget-object v4, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 369
    .line 370
    if-eqz v4, :cond_d

    .line 371
    .line 372
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    div-int/lit8 v1, v1, 0x2

    .line 377
    .line 378
    sub-int v1, p4, v1

    .line 379
    .line 380
    invoke-virtual {p0, v0, v2, v1}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b(Landroid/view/View;II)V

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_d
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw p3

    .line 388
    :cond_e
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw p3

    .line 392
    :cond_f
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    throw p3

    .line 396
    :cond_10
    :goto_3
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f:Landroid/view/View;

    .line 397
    .line 398
    const-string v1, "checkbox"

    .line 399
    .line 400
    if-eqz v0, :cond_17

    .line 401
    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    if-eq v0, v3, :cond_16

    .line 407
    .line 408
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 409
    .line 410
    if-eqz v0, :cond_15

    .line 411
    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 413
    .line 414
    .line 415
    move-result p5

    .line 416
    if-eq p5, v3, :cond_11

    .line 417
    .line 418
    sub-int/2addr p2, p1

    .line 419
    :cond_11
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f:Landroid/view/View;

    .line 420
    .line 421
    if-eqz p1, :cond_14

    .line 422
    .line 423
    invoke-static {p1}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 424
    .line 425
    .line 426
    move-result-object p5

    .line 427
    invoke-virtual {p5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 428
    .line 429
    .line 430
    move-result p5

    .line 431
    sub-int/2addr p2, p5

    .line 432
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f:Landroid/view/View;

    .line 433
    .line 434
    if-eqz p5, :cond_13

    .line 435
    .line 436
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 437
    .line 438
    .line 439
    move-result p5

    .line 440
    sub-int/2addr p2, p5

    .line 441
    iget-object p5, p0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f:Landroid/view/View;

    .line 442
    .line 443
    if-eqz p5, :cond_12

    .line 444
    .line 445
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 446
    .line 447
    .line 448
    move-result p3

    .line 449
    div-int/lit8 p3, p3, 0x2

    .line 450
    .line 451
    sub-int/2addr p4, p3

    .line 452
    invoke-virtual {p0, p1, p2, p4}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b(Landroid/view/View;II)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :cond_12
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    throw p3

    .line 460
    :cond_13
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw p3

    .line 464
    :cond_14
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw p3

    .line 468
    :cond_15
    invoke-static {p5}, Lpe4;->F(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw p3

    .line 472
    :cond_16
    return-void

    .line 473
    :cond_17
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    throw p3

    .line 477
    :cond_18
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw p3

    .line 481
    :cond_19
    invoke-static {p5}, Lpe4;->F(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    throw p3

    .line 485
    :cond_1a
    invoke-static {p5}, Lpe4;->F(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    throw p3

    .line 489
    :cond_1b
    const-string p0, "labels"

    .line 490
    .line 491
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw p3

    .line 495
    :cond_1c
    const-string p0, "subtitle3"

    .line 496
    .line 497
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    throw p3

    .line 501
    :cond_1d
    const-string p0, "subtitle2"

    .line 502
    .line 503
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    throw p3

    .line 507
    :cond_1e
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    throw p3

    .line 511
    :cond_1f
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw p3

    .line 515
    :cond_20
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw p3

    .line 519
    :cond_21
    invoke-static {v2}, Lpe4;->F(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw p3

    .line 523
    :cond_22
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw p3

    .line 527
    :cond_23
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    throw p3

    .line 531
    :cond_24
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw p3

    .line 535
    :cond_25
    invoke-static {p4}, Lpe4;->F(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw p3
.end method

.method public final onMeasure(II)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x0

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int v3, v4, v3

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    sub-int/2addr v3, v6

    .line 34
    if-gez v3, :cond_1

    .line 35
    .line 36
    move v3, v5

    .line 37
    :cond_1
    :goto_0
    iget-object v6, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const-string v8, "icon"

    .line 41
    .line 42
    if-eqz v6, :cond_25

    .line 43
    .line 44
    invoke-virtual {v0, v6, v1, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e(Landroid/view/View;II)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->n:Landroid/view/View;

    .line 49
    .line 50
    if-eqz v9, :cond_24

    .line 51
    .line 52
    invoke-virtual {v0, v9, v1, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e(Landroid/view/View;II)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    or-int/2addr v6, v9

    .line 57
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 58
    .line 59
    const-string v10, "menu"

    .line 60
    .line 61
    if-eqz v9, :cond_23

    .line 62
    .line 63
    invoke-virtual {v0, v9, v1, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e(Landroid/view/View;II)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    or-int/2addr v6, v9

    .line 68
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 69
    .line 70
    const-string v11, "menuClickListener"

    .line 71
    .line 72
    if-eqz v9, :cond_22

    .line 73
    .line 74
    invoke-virtual {v0, v9, v1, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e(Landroid/view/View;II)I

    .line 75
    .line 76
    .line 77
    move-result v9

    .line 78
    or-int/2addr v6, v9

    .line 79
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f:Landroid/view/View;

    .line 80
    .line 81
    const-string v12, "checkbox"

    .line 82
    .line 83
    if-eqz v9, :cond_21

    .line 84
    .line 85
    invoke-virtual {v0, v9, v1, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e(Landroid/view/View;II)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    or-int/2addr v6, v9

    .line 90
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 91
    .line 92
    if-eqz v9, :cond_20

    .line 93
    .line 94
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    const-string v13, "title"

    .line 99
    .line 100
    const/16 v14, 0x8

    .line 101
    .line 102
    if-eq v9, v14, :cond_3

    .line 103
    .line 104
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b:Landroid/view/View;

    .line 105
    .line 106
    if-eqz v9, :cond_2

    .line 107
    .line 108
    invoke-static {v9}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d(Landroid/view/View;)Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-virtual {v9}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-static {v13}, Lpe4;->F(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v7

    .line 121
    :cond_3
    move v9, v5

    .line 122
    :goto_1
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->a()I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    add-int/2addr v15, v9

    .line 127
    sub-int/2addr v3, v15

    .line 128
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 129
    .line 130
    if-eqz v9, :cond_1f

    .line 131
    .line 132
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 133
    .line 134
    .line 135
    move-result v9

    .line 136
    if-eq v9, v14, :cond_5

    .line 137
    .line 138
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 139
    .line 140
    if-eqz v9, :cond_4

    .line 141
    .line 142
    invoke-static {v9}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->i(Landroid/view/View;)I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    goto :goto_2

    .line 147
    :cond_4
    invoke-static {v11}, Lpe4;->F(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v7

    .line 151
    :cond_5
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 152
    .line 153
    if-eqz v9, :cond_1e

    .line 154
    .line 155
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-eq v9, v14, :cond_7

    .line 160
    .line 161
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 162
    .line 163
    if-eqz v9, :cond_6

    .line 164
    .line 165
    invoke-static {v9}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->i(Landroid/view/View;)I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    goto :goto_2

    .line 170
    :cond_6
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v7

    .line 174
    :cond_7
    move v9, v5

    .line 175
    :goto_2
    iget-object v15, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f:Landroid/view/View;

    .line 176
    .line 177
    if-eqz v15, :cond_1d

    .line 178
    .line 179
    invoke-static {v15}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->i(Landroid/view/View;)I

    .line 180
    .line 181
    .line 182
    move-result v15

    .line 183
    add-int/2addr v15, v9

    .line 184
    sub-int/2addr v3, v15

    .line 185
    if-gez v3, :cond_8

    .line 186
    .line 187
    move v3, v5

    .line 188
    :cond_8
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->a:Landroid/view/View;

    .line 189
    .line 190
    const-string v15, "subtitle1"

    .line 191
    .line 192
    if-eqz v9, :cond_1c

    .line 193
    .line 194
    invoke-virtual {v0, v9, v3, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f(Landroid/view/View;II)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    or-int/2addr v6, v9

    .line 199
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b:Landroid/view/View;

    .line 200
    .line 201
    if-eqz v9, :cond_1b

    .line 202
    .line 203
    invoke-virtual {v0, v9, v3, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f(Landroid/view/View;II)I

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    or-int/2addr v6, v9

    .line 208
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c:Landroid/view/View;

    .line 209
    .line 210
    const-string v16, "subtitle2"

    .line 211
    .line 212
    if-eqz v9, :cond_1a

    .line 213
    .line 214
    invoke-virtual {v0, v9, v3, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f(Landroid/view/View;II)I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    or-int/2addr v6, v9

    .line 219
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d:Landroid/view/View;

    .line 220
    .line 221
    const-string v17, "subtitle3"

    .line 222
    .line 223
    if-eqz v9, :cond_19

    .line 224
    .line 225
    invoke-virtual {v0, v9, v3, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f(Landroid/view/View;II)I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    or-int/2addr v6, v9

    .line 230
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e:Landroid/view/View;

    .line 231
    .line 232
    const-string v18, "labels"

    .line 233
    .line 234
    if-eqz v9, :cond_18

    .line 235
    .line 236
    invoke-virtual {v0, v9, v3, v2}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f(Landroid/view/View;II)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    or-int/2addr v3, v6

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->a:Landroid/view/View;

    .line 246
    .line 247
    if-eqz v9, :cond_17

    .line 248
    .line 249
    invoke-static {v9, v6}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->h(Landroid/view/View;I)I

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->b:Landroid/view/View;

    .line 254
    .line 255
    if-eqz v9, :cond_16

    .line 256
    .line 257
    invoke-static {v9, v6}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->h(Landroid/view/View;I)I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->c:Landroid/view/View;

    .line 262
    .line 263
    if-eqz v9, :cond_15

    .line 264
    .line 265
    invoke-static {v9, v6}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->h(Landroid/view/View;I)I

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->d:Landroid/view/View;

    .line 270
    .line 271
    if-eqz v9, :cond_14

    .line 272
    .line 273
    invoke-static {v9, v6}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->h(Landroid/view/View;I)I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->e:Landroid/view/View;

    .line 278
    .line 279
    if-eqz v9, :cond_13

    .line 280
    .line 281
    invoke-static {v9, v6}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->h(Landroid/view/View;I)I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 286
    .line 287
    if-eqz v9, :cond_12

    .line 288
    .line 289
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 290
    .line 291
    .line 292
    move-result v9

    .line 293
    if-ne v9, v14, :cond_9

    .line 294
    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    goto :goto_3

    .line 300
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    iget-object v13, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->a:Landroid/view/View;

    .line 305
    .line 306
    if-eqz v13, :cond_11

    .line 307
    .line 308
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 313
    .line 314
    .line 315
    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 316
    .line 317
    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 318
    .line 319
    add-int/2addr v9, v13

    .line 320
    iget-object v13, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 321
    .line 322
    if-eqz v13, :cond_10

    .line 323
    .line 324
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 332
    .line 333
    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 334
    .line 335
    add-int/2addr v9, v13

    .line 336
    iget-object v13, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 337
    .line 338
    if-eqz v13, :cond_f

    .line 339
    .line 340
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 341
    .line 342
    .line 343
    move-result v13

    .line 344
    add-int/2addr v13, v9

    .line 345
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->k:Landroid/view/View;

    .line 346
    .line 347
    if-eqz v9, :cond_e

    .line 348
    .line 349
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 350
    .line 351
    .line 352
    move-result-object v8

    .line 353
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 354
    .line 355
    .line 356
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 357
    .line 358
    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 359
    .line 360
    add-int/2addr v8, v13

    .line 361
    :goto_3
    iget-object v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->f:Landroid/view/View;

    .line 362
    .line 363
    if-eqz v9, :cond_d

    .line 364
    .line 365
    invoke-static {v9}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->g(Landroid/view/View;)I

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    iget-object v12, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->p:Landroid/view/View;

    .line 370
    .line 371
    if-eqz v12, :cond_c

    .line 372
    .line 373
    invoke-static {v12}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->g(Landroid/view/View;)I

    .line 374
    .line 375
    .line 376
    move-result v10

    .line 377
    iget-object v12, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->q:Landroid/view/View;

    .line 378
    .line 379
    if-eqz v12, :cond_b

    .line 380
    .line 381
    invoke-static {v12}, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->g(Landroid/view/View;)I

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    .line 386
    .line 387
    .line 388
    move-result v7

    .line 389
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    .line 390
    .line 391
    .line 392
    move-result v7

    .line 393
    iget v9, v0, Lorg/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout;->r:I

    .line 394
    .line 395
    add-int/2addr v6, v9

    .line 396
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 397
    .line 398
    .line 399
    move-result v10

    .line 400
    add-int/2addr v10, v6

    .line 401
    add-int/2addr v8, v9

    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    add-int/2addr v6, v8

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 408
    .line 409
    .line 410
    move-result v8

    .line 411
    add-int/2addr v8, v7

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 413
    .line 414
    .line 415
    move-result v7

    .line 416
    add-int/2addr v7, v8

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 418
    .line 419
    .line 420
    move-result v8

    .line 421
    filled-new-array {v6, v7, v8}, [I

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    :goto_4
    const/4 v7, 0x3

    .line 426
    if-ge v5, v7, :cond_a

    .line 427
    .line 428
    aget v7, v6, v5

    .line 429
    .line 430
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    .line 431
    .line 432
    .line 433
    move-result v10

    .line 434
    add-int/lit8 v5, v5, 0x1

    .line 435
    .line 436
    goto :goto_4

    .line 437
    :cond_a
    invoke-static {v4, v1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    shl-int/lit8 v3, v3, 0x10

    .line 442
    .line 443
    invoke-static {v10, v2, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :cond_b
    invoke-static {v11}, Lpe4;->F(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    throw v7

    .line 455
    :cond_c
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw v7

    .line 459
    :cond_d
    invoke-static {v12}, Lpe4;->F(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v7

    .line 463
    :cond_e
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw v7

    .line 467
    :cond_f
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw v7

    .line 471
    :cond_10
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    throw v7

    .line 475
    :cond_11
    invoke-static {v15}, Lpe4;->F(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw v7

    .line 479
    :cond_12
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    throw v7

    .line 483
    :cond_13
    invoke-static/range {v18 .. v18}, Lpe4;->F(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    throw v7

    .line 487
    :cond_14
    invoke-static/range {v17 .. v17}, Lpe4;->F(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    throw v7

    .line 491
    :cond_15
    invoke-static/range {v16 .. v16}, Lpe4;->F(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw v7

    .line 495
    :cond_16
    invoke-static {v13}, Lpe4;->F(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v7

    .line 499
    :cond_17
    invoke-static {v15}, Lpe4;->F(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    throw v7

    .line 503
    :cond_18
    invoke-static/range {v18 .. v18}, Lpe4;->F(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    throw v7

    .line 507
    :cond_19
    invoke-static/range {v17 .. v17}, Lpe4;->F(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    throw v7

    .line 511
    :cond_1a
    invoke-static/range {v16 .. v16}, Lpe4;->F(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    throw v7

    .line 515
    :cond_1b
    invoke-static {v13}, Lpe4;->F(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    throw v7

    .line 519
    :cond_1c
    invoke-static {v15}, Lpe4;->F(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v7

    .line 523
    :cond_1d
    invoke-static {v12}, Lpe4;->F(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw v7

    .line 527
    :cond_1e
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    throw v7

    .line 531
    :cond_1f
    invoke-static {v11}, Lpe4;->F(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw v7

    .line 535
    :cond_20
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    throw v7

    .line 539
    :cond_21
    invoke-static {v12}, Lpe4;->F(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw v7

    .line 543
    :cond_22
    invoke-static {v11}, Lpe4;->F(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    throw v7

    .line 547
    :cond_23
    invoke-static {v10}, Lpe4;->F(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    throw v7

    .line 551
    :cond_24
    const-string v0, "favorite"

    .line 552
    .line 553
    invoke-static {v0}, Lpe4;->F(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    throw v7

    .line 557
    :cond_25
    invoke-static {v8}, Lpe4;->F(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    throw v7
.end method
