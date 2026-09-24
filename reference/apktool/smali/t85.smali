.class public final synthetic Lt85;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;)V
    .locals 0

    .line 10
    const/4 p2, 0x1

    iput p2, p0, Lt85;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt85;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lv85;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt85;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lt85;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget v0, p0, Lt85;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lt85;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/view/View;

    .line 9
    .line 10
    sget-object v0, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->K:Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/lang/Float;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/high16 v1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 39
    .line 40
    :goto_0
    mul-float/2addr v0, p1

    .line 41
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-static {p1, v3, v1}, Ll73;->g(FFF)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v4, 0x0

    .line 62
    if-nez v3, :cond_1

    .line 63
    .line 64
    new-instance v3, Landroid/graphics/Rect;

    .line 65
    .line 66
    int-to-float v5, v0

    .line 67
    sub-float/2addr v1, p1

    .line 68
    mul-float/2addr v1, v5

    .line 69
    invoke-static {v1}, Ltu0;->v(F)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-direct {v3, p1, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    .line 78
    .line 79
    int-to-float v0, v0

    .line 80
    mul-float/2addr v0, p1

    .line 81
    invoke-static {v0}, Ltu0;->v(F)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_0
    check-cast p0, Lv85;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/Float;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const/high16 v0, 0x437f0000    # 255.0f

    .line 105
    .line 106
    mul-float/2addr v0, p1

    .line 107
    float-to-int v0, v0

    .line 108
    iget-object v1, p0, Lv85;->k:Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    .line 112
    .line 113
    iput p1, p0, Lv85;->y:F

    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
