.class public final Lwu8;
.super Lxu8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Landroid/view/WindowInsetsAnimation;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    invoke-direct {p0, v3, v0, v1, v2}, Lxu8;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lwu8;->e:Landroid/view/WindowInsetsAnimation;

    .line 9
    .line 10
    return-void
.end method

.method public static f(Landroid/view/WindowInsetsAnimation$Bounds;)Lvc4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation$Bounds;->getUpperBound()Landroid/graphics/Insets;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lvc4;->d(Landroid/graphics/Insets;)Lvc4;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static g(Landroid/view/WindowInsetsAnimation$Bounds;)Lvc4;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation$Bounds;->getLowerBound()Landroid/graphics/Insets;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lvc4;->d(Landroid/graphics/Insets;)Lvc4;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static h(Landroid/view/View;Lol1;)V
    .locals 1

    .line 1
    new-instance v0, Lvu8;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lvu8;-><init>(Lol1;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    .line 1
    iget-object p0, p0, Lwu8;->e:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation;->getAlpha()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-object p0, p0, Lwu8;->e:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final c()F
    .locals 0

    .line 1
    iget-object p0, p0, Lwu8;->e:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final d()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwu8;->e:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final e(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lwu8;->e:Landroid/view/WindowInsetsAnimation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
