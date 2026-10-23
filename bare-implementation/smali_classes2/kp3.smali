.class public final Lkp3;
.super Lrl0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrl0<",
        "Llp3;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lgv7;

.field public d:Lto3;

.field public final e:Lcp3;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lrl0;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Ld76;

    .line 6
    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    invoke-direct {v1, p0, v2}, Ld76;-><init>(Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lgv7;

    .line 13
    .line 14
    invoke-direct {v2, v1}, Lgv7;-><init>(Lbt3;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lkp3;->c:Lgv7;

    .line 18
    .line 19
    new-instance v1, Lcp3;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-direct {v1, v2}, Lcp3;-><init>(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lfm7;

    .line 26
    .line 27
    iget-object v2, v1, Lgm7;->e:Lfm7;

    .line 28
    .line 29
    iget-object v4, v2, Lfm7;->a:Ljava/util/List;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/16 v8, 0x1e

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    invoke-direct/range {v3 .. v8}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3, v0}, Lgm7;->w(Lfm7;Z)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lh20;

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-direct {v0, p0, v2}, Lh20;-><init>(Ljava/lang/Object;I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, v1, Lgm7;->j:Lqt3;

    .line 49
    .line 50
    iput-object v1, p0, Lkp3;->e:Lcp3;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 9
    .line 10
    return-object p0
.end method

.method public final j()Lzx2;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Llp3;

    .line 7
    .line 8
    iget-object p0, p0, Llp3;->c:Lzx2;

    .line 9
    .line 10
    return-object p0
.end method

.method public final k()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Llp3;

    .line 7
    .line 8
    iget-object p0, p0, Llp3;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    return-object p0
.end method

.method public final l()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lrl0;->b:Ljk8;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    check-cast p0, Llp3;

    .line 7
    .line 8
    iget-object p0, p0, Llp3;->e:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 9
    .line 10
    return-object p0
.end method

.method public final m()Lnp3;
    .locals 0

    .line 1
    iget-object p0, p0, Lkp3;->c:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnp3;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "KEY_SECTION"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lto3;

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    :cond_0
    sget-object p1, Lto3;->LOCAL:Lto3;

    .line 21
    .line 22
    :cond_1
    iput-object p1, p0, Lkp3;->d:Lto3;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const-string v1, "section"

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "FoldersDashFragment."

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lrl0;->a:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v2, Ljp3;

    .line 46
    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v3, 0x2

    .line 50
    const-class v5, Lkp3;

    .line 51
    .line 52
    const-string v6, "onItemMenuClick"

    .line 53
    .line 54
    const-string v7, "onItemMenuClick(Landroid/view/View;Lorg/swiftapps/swiftbackup/folders/data/FolderDashItem;)V"

    .line 55
    .line 56
    move-object v4, p0

    .line 57
    invoke-direct/range {v2 .. v9}, Ljp3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    iget-object p0, v4, Lkp3;->e:Lcp3;

    .line 61
    .line 62
    iput-object v2, p0, Lcp3;->n:Ljp3;

    .line 63
    .line 64
    invoke-virtual {v4}, Lkp3;->m()Lnp3;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    iget-object p1, v4, Lkp3;->d:Lto3;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    sget-object v0, Lzn4;->a:Lzn4;

    .line 76
    .line 77
    new-instance v0, Lqf;

    .line 78
    .line 79
    const/16 v1, 0xe

    .line 80
    .line 81
    invoke-direct {v0, v1, p0, p1}, Lqf;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lzn4;->c(Lbt3;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_2
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :cond_3
    invoke-static {v1}, Lpe4;->F(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0d00bb

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f0a00e2

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    move-object v2, p3

    .line 20
    check-cast v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const p2, 0x7f0a0209

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    invoke-static {p3}, Lzx2;->a(Landroid/view/View;)Lzx2;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const p2, 0x7f0a03bf

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    move-object v4, p3

    .line 45
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    const p2, 0x7f0a0498

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    move-object v5, p3

    .line 57
    check-cast v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 58
    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    new-instance v0, Llp3;

    .line 62
    .line 63
    move-object v1, p1

    .line 64
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 65
    .line 66
    invoke-direct/range {v0 .. v5}, Llp3;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lzx2;Landroidx/recyclerview/widget/RecyclerView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lrl0;->b:Ljk8;

    .line 70
    .line 71
    invoke-virtual {v0}, Llp3;->getRoot()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string p1, "Missing required view with ID: "

    .line 88
    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 p0, 0x0

    .line 97
    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lkp3;->l()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lkp3;->i()Lorg/swiftapps/swiftbackup/folders/ui/FoldersDashActivity;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Lk28;->v()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-static {p1, p2}, Lorg/swiftapps/swiftbackup/common/Const;->H(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lkp3;->l()Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lbb;

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    invoke-direct {p2, p0, v0}, Lbb;-><init>(Ljava/lang/Object;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Ldu7;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lkp3;->k()Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 p2, 0x7

    .line 37
    invoke-static {p1, p2}, Lsz8;->b(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v1}, Lorg/swiftapps/swiftbackup/views/PreCachingLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lkp3;->e:Lcp3;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lrl0;->b:Ljk8;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    check-cast p1, Llp3;

    .line 66
    .line 67
    iget-object p1, p1, Llp3;->b:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 68
    .line 69
    invoke-static {p1}, Lsz8;->a(Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lkp3;->k()Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x1

    .line 77
    invoke-static {p1, v0, v1}, Lsz8;->f0(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Li00;

    .line 81
    .line 82
    invoke-direct {v0, p0, p2}, Li00;-><init>(Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lkp3;->m()Lnp3;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Lnp3;->g:Lex6;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    new-instance v0, Lx11;

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    const/4 v7, 0x2

    .line 102
    const-class v3, Lkp3;

    .line 103
    .line 104
    const-string v4, "onViewStatusUpdate"

    .line 105
    .line 106
    const-string v5, "onViewStatusUpdate(Lorg/swiftapps/swiftbackup/common/repos/RepositoryResult$Status;)V"

    .line 107
    .line 108
    move-object v2, p0

    .line 109
    invoke-direct/range {v0 .. v7}, Lx11;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    new-instance p0, Ly20;

    .line 113
    .line 114
    const/4 v1, 0x2

    .line 115
    invoke-direct {p0, v1, v0}, Ly20;-><init>(ILmt3;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2, p0}, Lzy4;->e(Lfu4;Les5;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Lkp3;->m()Lnp3;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    iget-object p0, p0, Lnp3;->h:Lex6;

    .line 126
    .line 127
    invoke-virtual {v2}, Landroidx/fragment/app/o;->getViewLifecycleOwner()Landroidx/fragment/app/f0;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance p2, Lu10;

    .line 132
    .line 133
    const/16 v0, 0xb

    .line 134
    .line 135
    invoke-direct {p2, v2, v0}, Lu10;-><init>(Ljava/lang/Object;I)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Ly20;

    .line 139
    .line 140
    invoke-direct {v0, v1, p2}, Ly20;-><init>(ILmt3;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p1, v0}, Lzy4;->e(Lfu4;Les5;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method
