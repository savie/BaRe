.class public final Lid6;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Ljava/util/Set;

.field public final f:Leh2;

.field public final k:Ljd6;

.field public final n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final p:Lgd6;

.field public final q:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Ljava/util/Set;Leh2;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xb

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lol1;-><init>(IZ)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lid6;->e:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p3, p0, Lid6;->f:Leh2;

    .line 16
    .line 17
    const p2, 0x7f0d0157

    .line 18
    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const p2, 0x7f0a00e2

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const p2, 0x7f0a03bf

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const p2, 0x7f0a05ba

    .line 48
    .line 49
    .line 50
    invoke-static {p1, p2}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/widget/TextView;

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    new-instance p2, Ljd6;

    .line 59
    .line 60
    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 61
    .line 62
    invoke-direct {p2, p1, v0, v1}, Ljd6;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lid6;->k:Ljd6;

    .line 66
    .line 67
    iput-object v1, p0, Lid6;->n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 68
    .line 69
    new-instance p1, Lgd6;

    .line 70
    .line 71
    invoke-direct {p1, p3}, Lgm7;-><init>(Lfm7;)V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lid6;->p:Lgd6;

    .line 75
    .line 76
    iput-object v0, p0, Lid6;->q:Lcom/google/android/material/button/MaterialButton;

    .line 77
    .line 78
    return-void

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
    throw p3
.end method


# virtual methods
.method public final H(Ljava/util/Set;)V
    .locals 7

    .line 1
    sget-object v0, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-static {}, Lyc6;->a()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    invoke-static {v0, v1}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lzc6;

    .line 33
    .line 34
    new-instance v3, Lhd6;

    .line 35
    .line 36
    invoke-direct {v3, v1}, Lhd6;-><init>(Lzc6;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v0, "ID_BACKUP_ALL_APPS"

    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_1
    :goto_1
    move-object v3, p1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const-string v0, "ID_BACKUP_SYNC_APPS"

    .line 58
    .line 59
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-static {v0}, Lsz8;->Y(Ljava/lang/Object;)Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_1

    .line 70
    :goto_2
    new-instance v1, Lfm7;

    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    const/16 v6, 0x1c

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    invoke-direct/range {v1 .. v6}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    const/4 p1, 0x0

    .line 80
    iget-object p0, p0, Lid6;->p:Lgd6;

    .line 81
    .line 82
    invoke-virtual {p0, v1, p1}, Lgm7;->w(Lfm7;Z)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final i()Ljk8;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lid6;->n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lid6;->p:Lgd6;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lb30;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    invoke-direct {v1, p0, v2}, Lb30;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lgm7;->g:Lqt3;

    .line 19
    .line 20
    new-instance v1, Llj2;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-direct {v1, v2, v0, p0}, Llj2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lgm7;->j:Lqt3;

    .line 27
    .line 28
    sget-object v0, Lzc6;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    .line 30
    invoke-static {}, Lyc6;->a()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    move-object v3, v2

    .line 54
    check-cast v3, Lzc6;

    .line 55
    .line 56
    iget v3, v3, Lzc6;->b:I

    .line 57
    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p0, Lid6;->e:Ljava/util/Set;

    .line 63
    .line 64
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    const/16 v2, 0xa

    .line 77
    .line 78
    invoke-static {v1, v2}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lzc6;

    .line 100
    .line 101
    iget-object v2, v2, Lzc6;->a:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lid6;->H(Ljava/util/Set;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Les;

    .line 115
    .line 116
    const/16 v1, 0xd

    .line 117
    .line 118
    invoke-direct {v0, p0, v1}, Les;-><init>(Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lid6;->q:Lcom/google/android/material/button/MaterialButton;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    iget-object p0, p0, Lid6;->k:Ljd6;

    .line 127
    .line 128
    return-object p0
.end method
