.class public final La47;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final e:Ljava/util/Set;

.field public final f:Lev;

.field public final k:Ltr9;

.field public final n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

.field public final p:Lcom/google/android/material/button/MaterialButton;

.field public final q:Lid2;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/home/HomeActivity;Ljava/util/Set;Lev;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iput-object p2, p0, La47;->e:Ljava/util/Set;

    .line 11
    .line 12
    iput-object p3, p0, La47;->f:Lev;

    .line 13
    .line 14
    const p2, 0x7f0d0169

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-static {p1, p2, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f0a00ff

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const v0, 0x7f0a03f1

    .line 34
    .line 35
    .line 36
    invoke-static {p2, v0}, Lms8;->u(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    new-instance p3, Ltr9;

    .line 45
    .line 46
    check-cast p2, Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-direct {p3, p2, v1, v2}, Ltr9;-><init>(Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;)V

    .line 49
    .line 50
    .line 51
    iput-object p3, p0, La47;->k:Ltr9;

    .line 52
    .line 53
    iput-object v2, p0, La47;->n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 54
    .line 55
    iput-object v1, p0, La47;->p:Lcom/google/android/material/button/MaterialButton;

    .line 56
    .line 57
    new-instance p2, Lid2;

    .line 58
    .line 59
    invoke-direct {p2, p1}, Lid2;-><init>(Lil0;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, La47;->q:Lid2;

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p1, "Missing required view with ID: "

    .line 74
    .line 75
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {p0}, Lf6;->n(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p3
.end method


# virtual methods
.method public final i()Ljk8;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 2
    .line 3
    iget-object v1, p0, La47;->n:Lorg/swiftapps/swiftbackup/views/QuickRecyclerView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i1(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/a;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lng6;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lfm7;

    .line 24
    .line 25
    invoke-static {}, Lsz8;->l()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {}, Lsz8;->l()Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    move-object v6, v5

    .line 53
    check-cast v6, Ljd2;

    .line 54
    .line 55
    iget v6, v6, Ljd2;->a:I

    .line 56
    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v7, p0, La47;->e:Ljava/util/Set;

    .line 62
    .line 63
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_0

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    const/16 v5, 0xa

    .line 76
    .line 77
    invoke-static {v4, v5}, Lhl1;->G0(Ljava/lang/Iterable;I)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljd2;

    .line 99
    .line 100
    iget v5, v5, Ljd2;->a:I

    .line 101
    .line 102
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v0}, Lel1;->z1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const/4 v6, 0x0

    .line 115
    const/16 v7, 0x1c

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    invoke-direct/range {v2 .. v7}, Lfm7;-><init>(Ljava/util/List;Ljava/util/Set;ZLjava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    iget-object v3, p0, La47;->q:Lid2;

    .line 123
    .line 124
    invoke-virtual {v3, v2, v0}, Lgm7;->w(Lfm7;Z)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lf7;

    .line 128
    .line 129
    const/4 v2, 0x6

    .line 130
    invoke-direct {v0, p0, v2}, Lf7;-><init>(Ljava/lang/Object;I)V

    .line 131
    .line 132
    .line 133
    iput-object v0, v3, Lgm7;->g:Lqt3;

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lhg6;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lmf;

    .line 139
    .line 140
    const/16 v1, 0xc

    .line 141
    .line 142
    invoke-direct {v0, p0, v1}, Lmf;-><init>(Ljava/lang/Object;I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, La47;->p:Lcom/google/android/material/button/MaterialButton;

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, La47;->k:Ltr9;

    .line 151
    .line 152
    return-object p0
.end method
