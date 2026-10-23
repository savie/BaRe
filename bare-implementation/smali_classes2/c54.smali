.class public final Lc54;
.super Lg54;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Ll90;

.field public final synthetic v:Lh54;


# direct methods
.method public constructor <init>(Lh54;Ll90;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc54;->v:Lh54;

    .line 2
    .line 3
    iget-object p1, p2, Ll90;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lc54;->u:Ll90;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final r(Ls54;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Ls54;->n:Lji;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v1, Ltr;->n0:Lqr;

    .line 10
    .line 11
    iget-object v1, p0, Lc54;->u:Ll90;

    .line 12
    .line 13
    iget-object v2, v1, Ll90;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lqr;->c(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object p0, p0, Lc54;->v:Lh54;

    .line 29
    .line 30
    iget-object v3, p0, Lh54;->l:Lqt3;

    .line 31
    .line 32
    iget-object v4, v1, Ll90;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-interface {v3, v4, v0}, Lqt3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v3, v1, Ll90;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-static {v3, v0, v2}, Lqr;->h(Landroid/widget/TextView;Lji;I)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v1, Ll90;->f:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroid/widget/TextView;

    .line 49
    .line 50
    invoke-static {v2, v0}, Lqr;->e(Landroid/widget/TextView;Lji;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v1, Ll90;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    .line 57
    new-instance v1, Lb54;

    .line 58
    .line 59
    invoke-direct {v1, p0, p1, p2}, Lb54;-><init>(Lh54;Ls54;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
