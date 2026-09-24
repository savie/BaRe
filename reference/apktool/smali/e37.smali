.class public final Le37;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

.field public final synthetic b:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le37;->a:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 5
    .line 6
    iput-object p2, p0, Le37;->b:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le37;->a:Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;

    .line 2
    .line 3
    iget-object v0, p1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->I:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    iget-object p0, p0, Le37;->b:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    invoke-static {v0, p0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    iput-object p0, p1, Lorg/swiftapps/swiftbackup/home/schedule/ui/ScheduleFabMenuView;->I:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    :cond_0
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
