.class public final Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final W:F

.field public final X:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    const/high16 p1, 0x41200000    # 10.0f

    .line 8
    .line 9
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;->W:F

    .line 10
    .line 11
    const/16 p1, 0x258

    .line 12
    .line 13
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;->X:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final N0(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lbk7;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lbk7;-><init>(Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput p2, v0, Lav4;->a:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->O0(Lav4;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final P0()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final h1(Lbh6;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lorg/swiftapps/swiftbackup/views/SpeedyLinearLayoutManager;->X:I

    .line 5
    .line 6
    return p0
.end method
