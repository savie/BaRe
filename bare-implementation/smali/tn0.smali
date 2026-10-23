.class public final Ltn0;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ltn0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ltn0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Ltn0;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ltn0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lc35;

    .line 9
    .line 10
    iget-object p1, p0, Lc35;->x:Lhp1;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lc35;->c:Lj35;

    .line 15
    .line 16
    invoke-virtual {p0}, Lj35;->a()F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-virtual {p1, p0}, Lhp1;->s(F)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Float;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    check-cast p0, Lfo0;

    .line 35
    .line 36
    iget-object p0, p0, Lfo0;->i:Leo0;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
