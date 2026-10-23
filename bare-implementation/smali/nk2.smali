.class public final synthetic Lnk2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lqk2;


# direct methods
.method public synthetic constructor <init>(Lqk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnk2;->a:Lqk2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lnk2;->a:Lqk2;

    .line 2
    .line 3
    iget-object p1, p0, Lqk2;->H:Lsp2;

    .line 4
    .line 5
    iget-object v0, p0, Lqk2;->M:Landroid/animation/TimeInterpolator;

    .line 6
    .line 7
    iget-object p0, p0, Lqk2;->L:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-interface {v0, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    iput p0, p1, Lsp2;->e:F

    .line 18
    .line 19
    return-void
.end method
