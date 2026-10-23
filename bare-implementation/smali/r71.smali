.class public final Lr71;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lt71;

.field public final synthetic b:Lu71;


# direct methods
.method public constructor <init>(Lu71;Lt71;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr71;->b:Lu71;

    .line 5
    .line 6
    iput-object p2, p0, Lr71;->a:Lt71;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lr71;->a:Lt71;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lu71;->d(FLt71;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iget-object p0, p0, Lr71;->b:Lu71;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, v1}, Lu71;->a(FLt71;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
