.class public Lcom/warkiz/widget/ArrowView;
.super Landroid/view/View;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/Path;

.field public final d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/warkiz/widget/ArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/warkiz/widget/ArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    const/high16 p2, 0x41400000    # 12.0f

    .line 5
    .line 6
    invoke-static {p1, p2}, Ltu0;->j(Landroid/content/Context;F)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iput p2, p0, Lcom/warkiz/widget/ArrowView;->a:I

    .line 11
    .line 12
    const/high16 p3, 0x40e00000    # 7.0f

    .line 13
    .line 14
    invoke-static {p1, p3}, Ltu0;->j(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/warkiz/widget/ArrowView;->b:I

    .line 19
    .line 20
    new-instance p3, Landroid/graphics/Path;

    .line 21
    .line 22
    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p3, p0, Lcom/warkiz/widget/ArrowView;->c:Landroid/graphics/Path;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p3, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 29
    .line 30
    .line 31
    int-to-float v1, p2

    .line 32
    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    .line 34
    .line 35
    int-to-float p2, p2

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    .line 37
    .line 38
    div-float/2addr p2, v0

    .line 39
    int-to-float p1, p1

    .line 40
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 44
    .line 45
    .line 46
    new-instance p1, Landroid/graphics/Paint;

    .line 47
    .line 48
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/warkiz/widget/ArrowView;->d:Landroid/graphics/Paint;

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    .line 56
    .line 57
    const/high16 p0, 0x3f800000    # 1.0f

    .line 58
    .line 59
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->c:Landroid/graphics/Path;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/warkiz/widget/ArrowView;->d:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/warkiz/widget/ArrowView;->a:I

    .line 2
    .line 3
    iget p2, p0, Lcom/warkiz/widget/ArrowView;->b:I

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/warkiz/widget/ArrowView;->d:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
