.class public final Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final W:I

.field public final X:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x258

    .line 17
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;->W:I

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;->X:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0x258

    .line 9
    .line 10
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;->W:I

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;->X:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
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
    iget p1, p0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;->X:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    iget p0, p0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;->W:I

    .line 10
    .line 11
    return p0
.end method
