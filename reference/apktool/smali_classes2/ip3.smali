.class public final Lip3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkp3;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lkp3;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lip3;->a:Lkp3;

    .line 5
    .line 6
    iput p2, p0, Lip3;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lip3;->a:Lkp3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkp3;->k()Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget p0, p0, Lip3;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->G(I)Lfh6;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of v0, p0, Lbp3;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p0, Lbp3;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    if-eqz p0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lbp3;->v:Lorg/swiftapps/swiftbackup/views/SwiftListItemCardView;

    .line 24
    .line 25
    const/4 v0, 0x7

    .line 26
    invoke-static {v0}, Lorg/swiftapps/swiftbackup/common/Const;->j(I)Landroid/view/animation/AlphaAnimation;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
