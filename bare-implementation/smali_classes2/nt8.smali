.class public final Lnt8;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lkc;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lkc;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lfh6;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Lkc;->e:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    iput-object v0, p0, Lnt8;->u:Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object v0, p1, Lkc;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object v0, p0, Lnt8;->v:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object p1, p1, Lkc;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Landroid/widget/ImageView;

    .line 23
    .line 24
    iput-object p1, p0, Lnt8;->w:Landroid/widget/ImageView;

    .line 25
    .line 26
    return-void
.end method
