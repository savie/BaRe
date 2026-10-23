.class public final synthetic Lxk5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lal5;


# direct methods
.method public synthetic constructor <init>(Lal5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxk5;->a:Lal5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lxk5;->a:Lal5;

    .line 2
    .line 3
    iget-object p1, p0, Lal5;->J:Landroid/view/View;

    .line 4
    .line 5
    iget-object p6, p0, Lal5;->L:Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {p6}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result p7

    .line 11
    if-nez p7, :cond_0

    .line 12
    .line 13
    iget-object p7, p0, Lal5;->s0:Lwk0;

    .line 14
    .line 15
    if-eqz p7, :cond_0

    .line 16
    .line 17
    new-instance p8, Landroid/graphics/Rect;

    .line 18
    .line 19
    invoke-direct {p8}, Landroid/graphics/Rect;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p6, p8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p7, p8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 26
    .line 27
    .line 28
    const/4 p8, 0x0

    .line 29
    invoke-virtual {p7, p6, p8}, Lwk0;->j(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p6, p0, Lal5;->I:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object p6

    .line 38
    check-cast p6, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    .line 40
    sub-int/2addr p4, p2

    .line 41
    iget p2, p6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 42
    .line 43
    add-int/2addr p4, p2

    .line 44
    iget p2, p6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 45
    .line 46
    add-int/2addr p4, p2

    .line 47
    sub-int/2addr p5, p3

    .line 48
    iget p2, p6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 49
    .line 50
    add-int/2addr p5, p2

    .line 51
    iget p2, p6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 52
    .line 53
    add-int/2addr p5, p2

    .line 54
    iget p2, p0, Lal5;->t0:I

    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    if-ne p2, p3, :cond_3

    .line 58
    .line 59
    iget p2, p0, Lal5;->n0:I

    .line 60
    .line 61
    const/4 p6, -0x2

    .line 62
    if-ne p2, p6, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    .line 70
    iget p7, p0, Lal5;->n0:I

    .line 71
    .line 72
    if-ne p7, p6, :cond_1

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 75
    .line 76
    .line 77
    move-result p6

    .line 78
    if-eq p6, p4, :cond_1

    .line 79
    .line 80
    iget p6, p0, Lal5;->l0:I

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 83
    .line 84
    .line 85
    move-result p7

    .line 86
    iget p0, p0, Lal5;->q0:I

    .line 87
    .line 88
    mul-int/lit8 p0, p0, 0x2

    .line 89
    .line 90
    sub-int/2addr p7, p0

    .line 91
    invoke-static {p6, p7}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 100
    .line 101
    move p0, p3

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 p0, 0x0

    .line 104
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    if-ge p4, p5, :cond_2

    .line 109
    .line 110
    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    move p3, p0

    .line 114
    :goto_1
    if-eqz p3, :cond_3

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void
.end method
