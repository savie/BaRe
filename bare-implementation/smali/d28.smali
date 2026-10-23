.class public final Ld28;
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
    iput-object v0, p0, Ld28;->b:Landroid/graphics/Rect;

    .line 7
    .line 8
    sget-object v0, Lbs5;->c:Landroid/graphics/Paint;

    .line 9
    .line 10
    iput-object v0, p0, Ld28;->c:Landroid/graphics/Paint;

    .line 11
    .line 12
    iput-object p1, p0, Ld28;->a:Lo75;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 1

    .line 1
    sub-int/2addr p7, p5

    .line 2
    div-int/lit8 p7, p7, 0x2

    .line 3
    .line 4
    add-int/2addr p7, p5

    .line 5
    iget-object p5, p0, Ld28;->c:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Ld28;->a:Lo75;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    .line 16
    .line 17
    .line 18
    move-result p6

    .line 19
    const/16 p8, 0x19

    .line 20
    .line 21
    invoke-static {p6, p8}, Lzh8;->c(II)I

    .line 22
    .line 23
    .line 24
    move-result p6

    .line 25
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    sget-object p6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 29
    .line 30
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    .line 32
    .line 33
    iget p2, p2, Lo75;->h:I

    .line 34
    .line 35
    if-ltz p2, :cond_0

    .line 36
    .line 37
    int-to-float p2, p2

    .line 38
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const/high16 p6, 0x3f000000    # 0.5f

    .line 46
    .line 47
    add-float/2addr p2, p6

    .line 48
    float-to-int p2, p2

    .line 49
    int-to-float p2, p2

    .line 50
    const/high16 p8, 0x40000000    # 2.0f

    .line 51
    .line 52
    div-float/2addr p2, p8

    .line 53
    add-float/2addr p2, p6

    .line 54
    float-to-int p2, p2

    .line 55
    if-lez p4, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    sub-int p4, p3, p4

    .line 67
    .line 68
    move v0, p4

    .line 69
    move p4, p3

    .line 70
    move p3, v0

    .line 71
    :goto_0
    sub-int p6, p7, p2

    .line 72
    .line 73
    add-int/2addr p7, p2

    .line 74
    iget-object p0, p0, Ld28;->b:Landroid/graphics/Rect;

    .line 75
    .line 76
    invoke-virtual {p0, p3, p6, p4, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
