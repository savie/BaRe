.class public final Lhj0;
.super Lfh6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Loi0;

.field public final y:Lfj0;

.field public final synthetic z:Lij0;


# direct methods
.method public constructor <init>(Lij0;Lwv0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lhj0;->z:Lij0;

    .line 2
    .line 3
    iget-object p1, p2, Lwv0;->d:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lfh6;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p2, Lwv0;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lhj0;->u:Landroid/widget/TextView;

    .line 15
    .line 16
    iget-object p1, p2, Lwv0;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroid/widget/ImageView;

    .line 19
    .line 20
    iput-object p1, p0, Lhj0;->v:Landroid/widget/ImageView;

    .line 21
    .line 22
    iget-object p1, p2, Lwv0;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Landroid/widget/ImageView;

    .line 25
    .line 26
    iput-object p1, p0, Lhj0;->w:Landroid/widget/ImageView;

    .line 27
    .line 28
    iget-object p1, p2, Lwv0;->f:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 31
    .line 32
    new-instance p2, Loi0;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p2, v0}, Loi0;-><init>(Ljava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lhj0;->x:Loi0;

    .line 43
    .line 44
    new-instance v0, Lfj0;

    .line 45
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lr35;-><init>(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lhj0;->y:Lfj0;

    .line 55
    .line 56
    new-instance p0, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x2

    .line 66
    invoke-direct {p0, v0, v1}, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
