.class public final Lwb4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:I

.field public final synthetic c:Lcom/warkiz/widget/IndicatorSeekBar;


# direct methods
.method public constructor <init>(Lcom/warkiz/widget/IndicatorSeekBar;FI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb4;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 5
    .line 6
    iput p2, p0, Lwb4;->a:F

    .line 7
    .line 8
    iput p3, p0, Lwb4;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lwb4;->c:Lcom/warkiz/widget/IndicatorSeekBar;

    .line 2
    .line 3
    iget v1, v0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 4
    .line 5
    iput v1, v0, Lcom/warkiz/widget/IndicatorSeekBar;->k:F

    .line 6
    .line 7
    iget-object v1, v0, Lcom/warkiz/widget/IndicatorSeekBar;->S:[F

    .line 8
    .line 9
    iget v2, p0, Lwb4;->b:I

    .line 10
    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    iget p0, p0, Lwb4;->a:F

    .line 14
    .line 15
    sub-float v1, p0, v1

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    cmpl-float v1, v1, v2

    .line 19
    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    sub-float/2addr p0, p1

    .line 33
    iput p0, v0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Float;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    add-float/2addr p1, p0

    .line 47
    iput p1, v0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 48
    .line 49
    :goto_0
    iget p0, v0, Lcom/warkiz/widget/IndicatorSeekBar;->M:F

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/warkiz/widget/IndicatorSeekBar;->v(F)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->a(Lcom/warkiz/widget/IndicatorSeekBar;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, v0, Lcom/warkiz/widget/IndicatorSeekBar;->j0:Lvb4;

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    iget-boolean p1, v0, Lcom/warkiz/widget/IndicatorSeekBar;->m0:Z

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lvb4;->c()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/warkiz/widget/IndicatorSeekBar;->w()V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 72
    .line 73
    .line 74
    return-void
.end method
