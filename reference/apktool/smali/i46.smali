.class public final Li46;
.super Lw5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic d:Lj46;


# direct methods
.method public constructor <init>(Lj46;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li46;->d:Lj46;

    .line 2
    .line 3
    invoke-direct {p0}, Lw5;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lm6;)V
    .locals 1

    .line 1
    iget-object p0, p0, Li46;->d:Lj46;

    .line 2
    .line 3
    iget-object v0, p0, Lj46;->g:Lgh6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lgh6;->d(Landroid/view/View;Lm6;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lj46;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->L(Landroid/view/View;)Lfh6;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, -0x1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Lfh6;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->I(Lfh6;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lhg6;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    instance-of p1, p0, Lf46;

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    check-cast p0, Lf46;

    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lf46;->m(I)Landroidx/preference/Preference;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Li46;->d:Lj46;

    .line 2
    .line 3
    iget-object p0, p0, Lj46;->g:Lgh6;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lgh6;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
