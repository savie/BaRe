.class public final Lb41;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Lsa1;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lsa1;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xb

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lb41;->e:Lsa1;

    .line 11
    .line 12
    iput-object p2, p0, Lb41;->f:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final i()Ljk8;
    .locals 6

    .line 1
    iget-object v0, p0, Lb41;->e:Lsa1;

    .line 2
    .line 3
    const v1, 0x7f0d0048

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const v3, 0x7f0a03bf

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    const v3, 0x7f0a05ba

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v3}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    new-instance v2, Lkm8;

    .line 34
    .line 35
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 36
    .line 37
    invoke-direct {v2, v1, v4}, Lkm8;-><init>(Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0xa

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lz31;

    .line 54
    .line 55
    iget-object p0, p0, Lb41;->f:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v1, v0, p0}, Lz31;-><init>(Lsa1;Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string v0, "Missing required view with ID: "

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v2
.end method
