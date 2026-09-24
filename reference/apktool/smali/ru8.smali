.class public final Lru8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lyu8;

.field public final synthetic c:Ll39;

.field public final synthetic d:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;Lyu8;Ll39;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru8;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lru8;->b:Lyu8;

    .line 7
    .line 8
    iput-object p3, p0, Lru8;->c:Ll39;

    .line 9
    .line 10
    iput-object p4, p0, Lru8;->d:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru8;->b:Lyu8;

    .line 2
    .line 3
    iget-object v1, p0, Lru8;->c:Ll39;

    .line 4
    .line 5
    iget-object v2, p0, Lru8;->a:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Ltu8;->i(Landroid/view/View;Lyu8;Ll39;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lru8;->d:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
