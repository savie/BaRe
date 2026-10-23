.class public final synthetic Lpt7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lpt7;->a:Landroid/view/View;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    sget v0, Lorg/swiftapps/swiftbackup/views/SwiftSegmentedCardGroup;->k:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lpt7;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Lrt7;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-direct {p1, v0, v3}, Lrt7;-><init>(FF)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move-object v0, p0

    .line 38
    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v1

    .line 42
    :goto_0
    if-nez v0, :cond_2

    .line 43
    .line 44
    new-instance p1, Lrt7;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-direct {p1, v0, v3}, Lrt7;-><init>(FF)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 72
    .line 73
    .line 74
    new-instance p1, Lrt7;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    int-to-float v4, v4

    .line 83
    add-float/2addr v0, v4

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 89
    .line 90
    int-to-float v3, v3

    .line 91
    add-float/2addr v4, v3

    .line 92
    invoke-direct {p1, v0, v4}, Lrt7;-><init>(FF)V

    .line 93
    .line 94
    .line 95
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    instance-of v3, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 100
    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    move-object v1, v0

    .line 104
    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 105
    .line 106
    :cond_3
    if-eqz v1, :cond_4

    .line 107
    .line 108
    iget v0, p1, Lrt7;->a:F

    .line 109
    .line 110
    iget p1, p1, Lrt7;->b:F

    .line 111
    .line 112
    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    const/4 p2, 0x1

    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    if-eq p1, p2, :cond_5

    .line 123
    .line 124
    const/4 p2, 0x3

    .line 125
    if-eq p1, p2, :cond_5

    .line 126
    .line 127
    return v2

    .line 128
    :cond_5
    new-instance p1, Lmr3;

    .line 129
    .line 130
    const/4 p2, 0x4

    .line 131
    invoke-direct {p1, p0, p2}, Lmr3;-><init>(Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    return v2

    .line 138
    :cond_6
    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    .line 139
    .line 140
    .line 141
    return v2
.end method
