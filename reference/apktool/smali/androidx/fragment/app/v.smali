.class public final Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/d0;

.field public final synthetic b:Landroidx/fragment/app/w;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/w;Landroidx/fragment/app/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/w;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/d0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/d0;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/d0;->c:Landroidx/fragment/app/o;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/d0;->k()V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Landroidx/fragment/app/o;->mView:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/fragment/app/v;->b:Landroidx/fragment/app/w;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/z;

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroidx/fragment/app/g;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/z;)Landroidx/fragment/app/g;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/g;->h()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
