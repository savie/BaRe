.class public final synthetic Lrc3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lsc3;

.field public final synthetic c:Landroid/widget/RelativeLayout;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ZLsc3;Landroid/widget/RelativeLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lrc3;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lrc3;->b:Lsc3;

    .line 7
    .line 8
    iput-object p3, p0, Lrc3;->c:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    iput-boolean p4, p0, Lrc3;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lrc3;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lrc3;->b:Lsc3;

    .line 6
    .line 7
    iget-object v1, v0, Lu35;->K:Ljk8;

    .line 8
    .line 9
    check-cast v1, Ltc3;

    .line 10
    .line 11
    iget-object v1, v1, Ltc3;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lsc3;->Q:Ldt;

    .line 20
    .line 21
    new-instance v2, Lt35;

    .line 22
    .line 23
    invoke-direct {v2}, Lt35;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    new-array v3, v3, [Ljava/lang/Class;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lil0;->w(Landroid/view/ViewGroup;Landroid/transition/Transition;[Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lrc3;->c:Landroid/widget/RelativeLayout;

    .line 36
    .line 37
    iget-boolean p0, p0, Lrc3;->d:Z

    .line 38
    .line 39
    invoke-static {v0, p0}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
