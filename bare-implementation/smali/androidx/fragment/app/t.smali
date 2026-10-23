.class public final Landroidx/fragment/app/t;
.super Lms8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lzl8;
.implements Lfu4;
.implements Lwx6;
.implements Lxr3;


# instance fields
.field public final d:Landroidx/fragment/app/u;

.field public final e:Landroidx/fragment/app/u;

.field public final f:Landroid/os/Handler;

.field public final k:Lur3;

.field public final synthetic n:Landroidx/fragment/app/u;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/fragment/app/t;->d:Landroidx/fragment/app/u;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/fragment/app/t;->e:Landroidx/fragment/app/u;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/fragment/app/t;->f:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance p1, Lur3;

    .line 18
    .line 19
    invoke-direct {p1}, Landroidx/fragment/app/z;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/fragment/app/t;->k:Lur3;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final C(I)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final D()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getLifecycle()Lhu4;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/fragment/app/u;->mFragmentLifecycleRegistry:Lhu4;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getSavedStateRegistry()Lot9;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio1;->getSavedStateRegistry()Lot9;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getViewModelStore()Lyl8;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/t;->n:Landroidx/fragment/app/u;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio1;->getViewModelStore()Lyl8;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
