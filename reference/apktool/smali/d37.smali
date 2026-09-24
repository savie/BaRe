.class public final Ld37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

.field public final synthetic b:Landroid/animation/AnimatorSet;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lbt3;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Landroid/animation/AnimatorSet;Ljava/util/List;Lbt3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld37;->a:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 5
    .line 6
    iput-object p2, p0, Ld37;->b:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    iput-object p3, p0, Ld37;->c:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Ld37;->d:Lbt3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ld37;->a:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v0, p0, Ld37;->b:Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ld37;->c:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p0, p0, Ld37;->d:Lbt3;

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    invoke-interface {p0}, Lbt3;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
