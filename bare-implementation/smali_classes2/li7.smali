.class public final Lli7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljk8;


# instance fields
.field public final a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field public final c:Lzx2;

.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final f:Ltf2;


# direct methods
.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lzx2;Landroidx/recyclerview/widget/RecyclerView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ltf2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lli7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lli7;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 7
    .line 8
    iput-object p3, p0, Lli7;->c:Lzx2;

    .line 9
    .line 10
    iput-object p4, p0, Lli7;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    iput-object p5, p0, Lli7;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 13
    .line 14
    iput-object p6, p0, Lli7;->f:Ltf2;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;)Lli7;
    .locals 10

    .line 1
    const v0, 0x7f0d0175

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const v0, 0x7f0a00a9

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/swiftapps/swiftbackup/views/MAppBarLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const v0, 0x7f0a00e2

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v5, v1

    .line 29
    check-cast v5, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    const v0, 0x7f0a0209

    .line 34
    .line 35
    .line 36
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-static {v1}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const v0, 0x7f0a03bf

    .line 47
    .line 48
    .line 49
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move-object v7, v1

    .line 54
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    if-eqz v7, :cond_0

    .line 57
    .line 58
    const v0, 0x7f0a0498

    .line 59
    .line 60
    .line 61
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v8, v1

    .line 66
    check-cast v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 67
    .line 68
    if-eqz v8, :cond_0

    .line 69
    .line 70
    const v0, 0x7f0a04e7

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    invoke-static {v1}, Ltf2;->a(Landroid/view/View;)Ltf2;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    new-instance v3, Lli7;

    .line 84
    .line 85
    move-object v4, p0

    .line 86
    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 87
    .line 88
    invoke-direct/range {v3 .. v9}, Lli7;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lzx2;Landroidx/recyclerview/widget/RecyclerView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Ltf2;)V

    .line 89
    .line 90
    .line 91
    return-object v3

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string v0, "Missing required view with ID: "

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object v2
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lli7;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 2
    .line 3
    return-object p0
.end method
