.class public final Ldt0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field public final a:Lo75;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lo75;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lbs5;->a:Landroid/graphics/Rect;

    .line 5
    .line 6
    iput-object v0, p0, Ldt0;->b:Landroid/graphics/Rect;

    .line 7
    .line 8
    sget-object v0, Lbs5;->c:Landroid/graphics/Paint;

    .line 9
    .line 10
    iput-object v0, p0, Ldt0;->c:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object p1, p0, Ldt0;->a:Lo75;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 1
    iget-object p6, p0, Ldt0;->a:Lo75;

    .line 2
    .line 3
    iget p8, p6, Lo75;->c:I

    .line 4
    .line 5
    if-nez p8, :cond_0

    .line 6
    .line 7
    iget p8, p6, Lo75;->b:I

    .line 8
    .line 9
    int-to-float p8, p8

    .line 10
    const/high16 p9, 0x3e800000    # 0.25f

    .line 11
    .line 12
    mul-float/2addr p8, p9

    .line 13
    const/high16 p9, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p8, p9

    .line 16
    float-to-int p8, p8

    .line 17
    :cond_0
    iget-object p9, p0, Ldt0;->c:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/16 p6, 0x19

    .line 30
    .line 31
    invoke-static {p2, p6}, Lzh8;->c(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    sget-object p6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 36
    .line 37
    invoke-virtual {p9, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    .line 42
    .line 43
    mul-int/2addr p4, p8

    .line 44
    add-int/2addr p3, p4

    .line 45
    add-int/2addr p4, p3

    .line 46
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    iget-object p0, p0, Ldt0;->b:Landroid/graphics/Rect;

    .line 55
    .line 56
    invoke-virtual {p0, p2, p5, p3, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p0, p9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    .line 1
    iget-object p0, p0, Ldt0;->a:Lo75;

    .line 2
    .line 3
    iget p0, p0, Lo75;->b:I

    .line 4
    .line 5
    return p0
.end method
