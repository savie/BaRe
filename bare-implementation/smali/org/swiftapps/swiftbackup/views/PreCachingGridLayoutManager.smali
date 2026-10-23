.class public final Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i0:I

.field public final j0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/16 p1, 0x258

    .line 8
    .line 9
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;->i0:I

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;->j0:I

    .line 13
    .line 14
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
    iget p1, p0, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;->j0:I

    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    return p1

    .line 9
    :cond_0
    iget p0, p0, Lorg/swiftapps/swiftbackup/views/PreCachingGridLayoutManager;->i0:I

    .line 10
    .line 11
    return p0
.end method
